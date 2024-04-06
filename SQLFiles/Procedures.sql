USE ApartmentListingSystem;
GO

-- GetCustomerTransactions - This procedure retrieves rent or sell transactions for a given customer. It first 
-- fetches transactions accordingly for rent or sell based on the determined customer type. 
-- If the customer is not found or an invalid customer type is provided, it raises an error.
CREATE OR ALTER PROCEDURE GetCustomerTransactions
    @CustomerID INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @CustomerType CHAR(1);

    -- Determine customer type
    SELECT @CustomerType = Customer_Type
    FROM [Customer]
    WHERE Customer_ID = @CustomerID;

    IF @CustomerType IS NULL
    BEGIN
        RAISERROR ('Customer not found.', 16, 1);
        RETURN;
    END

    IF @CustomerType = 'R' -- Customer type is 'R' (Rent)
    BEGIN
        SELECT 'Renter' AS CustomerType,
               rt.Rent_ID AS Transaction_ID,
               rt.Monthly_Rent AS Monthly_Rent,
               rt.Transaction_Date AS Transaction_Date,
               rt.Transaction_Status AS Transaction_Status,
               rd.Agreement_Date AS Agreement_Date,
               rd.Lease_Start_Date AS Lease_Start_Date,
               rd.Lease_End_Date AS Lease_End_Date
        FROM Rent_Transaction rt
        INNER JOIN Rent_Legal_Document rd ON rt.Rent_Transaction_ID = rd.Rent_Transaction_ID
        WHERE rt.Customer_ID = @CustomerID;
    END
    ELSE IF @CustomerType = 'S' -- Customer type is 'S' (Sell)
    BEGIN
        SELECT 'Buyer' AS CustomerType,
               st.Sell_Transaction_ID AS Transaction_ID,
               st.Buying_Price AS Buying_Amount,
               st.Transaction_Date AS Transaction_Date,
               st.Transaction_Status AS Transaction_Status,
               sd.Agreement_Date AS Agreement_Date,
               sd.Sale_Deed AS Sale_Deed
        FROM Sell_Transaction st
        INNER JOIN Sell_Legal_Document sd ON st.Sell_Transaction_ID = sd.Sell_Transaction_ID
        WHERE st.Customer_ID = @CustomerID;
    END
    ELSE
    BEGIN
        RAISERROR ('Invalid customer type.', 16, 1);
    END
END;

-- Demonstartion of stored procedure GetCustomerTransactions
EXEC GetCustomerTransactions 13;
EXEC GetCustomerTransactions 3;
EXEC GetCustomerTransactions 25;
EXEC GetCustomerTransactions 43;


-- GetPropertyListings - This stored procedure retrieves a list of property listings based on the provided criteria such as 
-- City, State, and Listing_Type, Budget Range. It returns a result set containing relevant property listings.

CREATE OR ALTER PROCEDURE GetPropertyListings
    @City VARCHAR(100),
    @State VARCHAR(100),
    @ListingType CHAR(1),
    @MinPrice INTEGER = NULL,
    @MaxPrice INTEGER = NULL
AS
BEGIN
    SELECT p.Property_ID,
           l.Listing_Date,
           l.Listing_Status,
           l.Listing_Type,
           a.Water,
           a.Gas,
           a.Electricity,
           a.Parking,
           a.Pets_Allowed
    FROM Property p
    INNER JOIN Listing l ON p.Property_ID = l.Property_ID
    INNER JOIN Amenity a ON l.Listing_ID = a.Listing_ID
    WHERE p.City = @City
      AND p.[State] = @State
      AND l.Listing_Type = @ListingType
      AND (@MinPrice IS NULL OR (
            (l.Listing_Type = 'R' AND EXISTS (SELECT 1 FROM Rent r WHERE r.Rent_ID = l.Property_ID AND r.Move_In_Cost >= @MinPrice))
            OR
            (l.Listing_Type = 'S' AND EXISTS (SELECT 1 FROM Sell s WHERE s.Sell_ID = l.Property_ID AND s.Asking_Price >= @MinPrice))
          ))
      AND (@MaxPrice IS NULL OR (
            (l.Listing_Type = 'R' AND EXISTS (SELECT 1 FROM Rent r WHERE r.Rent_ID = l.Property_ID AND r.Move_In_Cost <= @MaxPrice))
            OR
            (l.Listing_Type = 'S' AND EXISTS (SELECT 1 FROM Sell s WHERE s.Sell_ID = l.Property_ID AND s.Asking_Price <= @MaxPrice))
          ));
END;

-- Demonstartion of stored procedure GetPropertyListings
EXEC GetPropertyListings 'Boston', 'MA', 'R', 1000, 3000;


--  GetListerPropertiesWithDetails - This procedure will retrieve all properties listed by a specific Lister along with the details of each property, 
-- including the number of bedrooms and bathrooms. Additionally, it will provide the average rating and the number of reviews for each property.
CREATE OR ALTER PROCEDURE GetListerPropertiesWithDetails
    @ListerID INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Declare a temporary table to store property details
    CREATE TABLE #PropertyDetails (
        PropertyID INT,
        Address VARCHAR(255),
        City VARCHAR(100),
        State VARCHAR(100),
        Zipcode INT,
        Bedrooms INT,
        Bathrooms INT,
        AverageRating DECIMAL(5,2),
        NumberOfReviews INT
    );

    -- Insert property details into the temporary table
    INSERT INTO #PropertyDetails (PropertyID, Address, City, State, Zipcode, Bedrooms, Bathrooms)
    SELECT p.Property_ID, p.Address_Line_1, p.City, p.State, p.Zipcode, pd.Bedroom, pd.Bathroom
    FROM Property p
    INNER JOIN Property_Detail pd ON p.Property_ID = pd.Property_ID
    WHERE p.Lister_ID = @ListerID;

    -- Update the temporary table with average rating and number of reviews for each property
    UPDATE #PropertyDetails
    SET AverageRating = r.AverageRating,
        NumberOfReviews = r.NumberOfReviews
    FROM #PropertyDetails pd
    OUTER APPLY (
        SELECT AVG(Rating) AS AverageRating, COUNT(*) AS NumberOfReviews
        FROM Review
        WHERE Property_ID = pd.PropertyID
    ) r;

    -- Retrieve properties with details
    SELECT pd.PropertyID,
           pd.Address,
           pd.City,
           pd.State,
           pd.Zipcode,
           pd.Bedrooms,
           pd.Bathrooms,
           pd.AverageRating,
           pd.NumberOfReviews
    FROM #PropertyDetails pd;

    -- Drop the temporary table
    DROP TABLE #PropertyDetails;
END;

-- Demonstartion of stored procedure GetPropertyListings
EXEC GetListerPropertiesWithDetails 12;
EXEC GetListerPropertiesWithDetails 4;
EXEC GetListerPropertiesWithDetails 6;
