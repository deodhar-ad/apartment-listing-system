CREATE DATABASE ApartmentFinder;
GO

USE ApartmentFinder;
GO

/*
    CREATE TABLES QUERIES
*/

CREATE TABLE [User] ( 
  User_ID INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY, 
  First_Name VARCHAR(50) NOT NULL, 
  Last_Name VARCHAR(50) NOT NULL, 
  Phone_No BIGINT, 
  Email VARCHAR(100) NOT NULL, 
  Date_Of_Birth DATE NOT NULL, 
  Encrypted_Phone_No VARBINARY(MAX),
--   User types : L (Lister), C (Customer)
  User_Type CHAR(1) NOT NULL 
  -- CONSTRAINT User_Type_CHK CHECK (
  --       User_Type IN ('L', 'C') 
  --   )
); 

CREATE TABLE Lister ( 
  Lister_ID INTEGER PRIMARY KEY,
--   Lister Type : B (Broker), O (Owner) 
  Lister_Type CHAR(1) NOT NULL,
  -- CONSTRAINT Lister_Type_CHK CHECK (
  --       Lister_Type IN ('B', 'O')
  --   ), 
  Active_Properties INTEGER, 
  FOREIGN KEY (Lister_ID) REFERENCES [User](User_ID) 
); 

CREATE TABLE Customer ( 
  Customer_ID INTEGER PRIMARY KEY, 
  Customer_Type CHAR(4) NOT NULL,
  --  CONSTRAINT Customer_Type_CHK CHECK (
  --       Customer_Type IN ('Rent', 'Sell')
  --   ), 
  Budget_Min INTEGER, 
  Budget_Max INTEGER, 
  Preferred_Location VARCHAR(30), 
  FOREIGN KEY (Customer_ID) REFERENCES [User](User_ID) 
); 

CREATE TABLE [Message] ( 
  Message_ID INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY, 
  Customer_ID INTEGER, 
  Lister_ID INTEGER, 
  [Subject] TEXT, 
  Content TEXT, 
  Timestamp TIMESTAMP, 
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID), 
  FOREIGN KEY (Lister_ID) REFERENCES Lister(Lister_ID) 
); 
  
CREATE TABLE Property ( 
  Property_ID INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY, 
  Lister_ID INTEGER, 
  Address_Line_1 VARCHAR(255) NOT NULL, 
  Address_Line_2 VARCHAR(255), 
  City VARCHAR(100) NOT NULL, 
  [State] VARCHAR(100) NOT NULL, 
  Country VARCHAR(100) NOT NULL, 
  Zipcode INTEGER NOT NULL, 
  FOREIGN KEY (Lister_ID) REFERENCES Lister(Lister_ID) 
); 

CREATE TABLE Property_Detail ( 
  Property_Detail_ID INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY, 
  Property_ID INTEGER, 
  Bedroom INTEGER, 
  Bathroom INTEGER, 
  Area_Size INTEGER, 
  [Description] TEXT, 
  FOREIGN KEY (Property_ID) REFERENCES Property(Property_ID) 
); 

CREATE TABLE Listing ( 
  Listing_ID INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY, 
  Property_ID INTEGER, 
  Listing_Date DATE NOT NULL, 
  Listing_Status VARCHAR(50) NOT NULL, 
  Listing_Type CHAR(1) NOT NULL,
  --  CONSTRAINT Listing_Type_CHK CHECK (
  --           Listing_Type IN ('R', 'S') 
  --       ), 
  FOREIGN KEY (Property_ID) REFERENCES PROPERTY(Property_ID) 
); 

CREATE TABLE Amenity ( 
  Amenity_ID INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY, 
  Listing_ID INTEGER, 
  Water BIT, 
  Gas BIT, 
  Electricity BIT, 
  Parking BIT, 
  Pets_Allowed BIT, 
  FOREIGN KEY (Listing_ID) REFERENCES Listing(Listing_ID) 
); 

CREATE TABLE Rent ( 
  Rent_ID INTEGER PRIMARY KEY, 
  Move_In_Cost INTEGER, 
  Security_Deposit INTEGER, 
  Available_State_Date DATE NOT NULL, 
  Available_End_Date DATE NOT NULL,
  FOREIGN KEY (Rent_ID) REFERENCES Listing(Listing_ID) 
); 

CREATE TABLE Sell ( 
  Sell_ID INTEGER PRIMARY KEY, 
  Asking_Price INTEGER NOT NULL, 
  Mortgage_Allowed BIT,
  FOREIGN KEY (Sell_ID) REFERENCES Listing(Listing_ID)  
); 

CREATE TABLE Sell_Transaction ( 
  Sell_Transaction_ID INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY, 
  Sell_ID INTEGER, 
  Customer_ID INTEGER, 
  Buying_Price INTEGER NOT NULL, 
  Transaction_Date DATETIME NOT NULL, 
  Transaction_Status VARCHAR(20) NOT NULL, 
  FOREIGN KEY (Sell_ID) REFERENCES Sell(Sell_ID), 
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID) 
); 

CREATE TABLE Rent_Transaction ( 
  Rent_Transaction_ID INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY, 
  Rent_ID INTEGER, 
  Customer_ID INTEGER, 
  Monthly_Rent INTEGER NOT NULL, 
  Transaction_Date DATETIME NOT NULL, 
  Transaction_Status VARCHAR(20) NOT NULL, 
  FOREIGN KEY (Rent_ID) REFERENCES Rent(Rent_ID), 
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID) 
); 

CREATE TABLE Rent_Legal_Document ( 
  Rent_Legal_Document_ID INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY, 
  Rent_Transaction_ID INTEGER, 
  Agreement_Date DATE NOT NULL,
  Lease_Start_Date DATE NOT NULL,
  Lease_End_Date DATE NOT NULL, 
  Terms_And_Condition TEXT,
  FOREIGN KEY (Rent_Transaction_ID) REFERENCES Rent_Transaction(Rent_Transaction_ID) 
); 

CREATE TABLE Sell_Legal_Document ( 
  Sell_Legal_Document_ID INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY, 
  Sell_Transaction_ID INTEGER, 
  Agreement_Date DATE NOT NULL,
  Sale_Deed VARCHAR(100) NOT NULL,
  Mortgage_Approval VARCHAR(100), 
  Terms_And_Condition TEXT,
  FOREIGN KEY (Sell_Transaction_ID) REFERENCES Sell_Transaction(Sell_Transaction_ID) 
);

CREATE TABLE Review (
    Review_ID INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Lister_ID INTEGER,
    Customer_ID INTEGER,
    Property_ID INTEGER,
    Rating DECIMAL,
    Comment TEXT,
    Review_Date TIMESTAMP,
    FOREIGN KEY (Lister_ID) REFERENCES Lister(Lister_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Property_ID) REFERENCES Property(Property_ID)
);

-- Check Constraint to ensure user's phone number is of 10 digits
ALTER TABLE [User] ADD CONSTRAINT CHK_PhoneNumberLength CHECK (LEN(CONVERT(VARCHAR(20), Phone_No)) = 10);

-- Check Constraint to User is of type Lister or Customer
ALTER TABLE [User] ADD CONSTRAINT User_Type_CHK CHECK ( User_Type IN ('L', 'C') );

-- Check Constraint to Lister is of type Broker or Owner
ALTER TABLE [Lister] ADD CONSTRAINT Lister_Type_CHK CHECK ( Lister_Type IN ('B', 'O') );

-- Check Constraint to Customer is of type Renter or Buyer
ALTER TABLE [Customer] ADD CONSTRAINT Customer_Type_CHK CHECK ( Customer_Type IN ('Rent', 'Sell') );

-- Check Constraint to Listing is of type Rent or Sell
ALTER TABLE [Listing] ADD CONSTRAINT Listing_Type_CHK CHECK ( Listing_Type IN ('R', 'S') );

-- Check Constraint for Rating in Review Table
ALTER TABLE [Review] ADD CONSTRAINT Rating_Check CHECK (Rating BETWEEN 0 AND 5);


/*
    TRIGGER QUERIES
*/

-- 1. Trigger that automatically updates the Active_Properties column in the Lister table whenever 
--    a new property is inserted or deleted in the Property table by that Lister_ID.
CREATE TRIGGER UpdateActiveProperties
ON Property
AFTER INSERT, DELETE
AS
BEGIN
    -- Update Active_Properties for each affected Lister due to INSERT operation
    UPDATE L
    SET Active_Properties = (
        SELECT COUNT(*) 
        FROM Property P 
        WHERE P.Lister_ID = L.Lister_ID
    )
    FROM Lister L
    INNER JOIN inserted I ON L.Lister_ID = I.Lister_ID;

    -- Update Active_Properties for each affected Lister due to DELETE operation
    UPDATE L
    SET Active_Properties = (
        SELECT COUNT(*) 
        FROM Property P 
        WHERE P.Lister_ID = L.Lister_ID
    )
    FROM Lister L
    INNER JOIN deleted D ON L.Lister_ID = D.Lister_ID;

END;

-- 2. Trigger to check Property Availability
CREATE TRIGGER Property_Availability_Check
ON Listing
FOR INSERT
AS
BEGIN
    DECLARE @PropertyID INT;

    -- Get the Property_ID being inserted
    SELECT @PropertyID = Property_ID FROM inserted;

    -- Check if the property is already rented out
    IF EXISTS (SELECT 1 FROM Rent WHERE Rent_ID = @PropertyID)
    BEGIN
        -- Property is already rented out, raise an error
        RAISERROR ('Property is already rented out', 16, 1);
        ROLLBACK TRANSACTION; -- Rollback the transaction to prevent the new listing
    END

    -- Check if the property is already sold
    IF EXISTS (SELECT 1 FROM Sell WHERE Sell_ID = @PropertyID)
    BEGIN
        -- Property is already sold, raise an error
        RAISERROR ('Property is already sold', 16, 1);
        ROLLBACK TRANSACTION; -- Rollback the transaction to prevent the new listing
    END
END;


/*
    NON-CLUSTERED INDEXING QUERIES
*/

-- 1. Index on Lister table for Lister_Type
CREATE NONCLUSTERED INDEX IX_Lister_ListerType ON Lister(Lister_Type);
-- Query to select listers of a specific type
SELECT *
FROM Lister
WHERE Lister_Type = 'O';

--  2. Index on Customer table for Customer_Type:
CREATE NONCLUSTERED INDEX IX_Customer_CustomerType ON Customer(Customer_Type);
-- Query to select customers of a specific type
SELECT *
FROM Customer
WHERE Customer_Type = 'Rent';

--  3. Index on Message table for Timestamp:
CREATE NONCLUSTERED INDEX IX_Message_Timestamp ON [Message]([Timestamp]);
-- Query to select messages sent within a specific time range
SELECT *
FROM Message
WHERE Timestamp >= CONVERT(TIMESTAMP, '2023-01-01') AND Timestamp < CONVERT(TIMESTAMP, '2024-02-01')
ORDER BY Timestamp DESC;

-- 4. Index on Property table for Lister_ID:
CREATE NONCLUSTERED INDEX IX_Property_ListerID ON Property(Lister_ID);
-- Query to select properties listed by a specific lister
SELECT *
FROM Property
WHERE Lister_ID = 12;

-- 5. Index on Listing table for Listing_Type and Listing_Status:
CREATE NONCLUSTERED INDEX IX_Listing_ListingType_ListingStatus 
    ON Listing(Listing_Type, Listing_Status);
-- Query to select active rental listings
SELECT *
FROM Listing
WHERE Listing_Type = 'R' AND Listing_Status = 'Active';


/*
    COLUMN ENCRYPTION QUERIES
*/

-- Creating a master key for column encryption
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'ApartmentFinder@123';


-- Creating a certificate for column encryption
CREATE CERTIFICATE MyCertificate
  WITH SUBJECT = 'My Column Encryption Certificate';

-- Creating a symmetric key for column encryption
CREATE SYMMETRIC KEY UserDataSymmetricKey  
WITH ALGORITHM = AES_256  
ENCRYPTION BY CERTIFICATE MyCertificate; 

-- Opening the symmetric key for decryption
OPEN SYMMETRIC KEY UserDataSymmetricKey
DECRYPTION BY CERTIFICATE MyCertificate

-- Creating a trigger to encrypt the Phone_No column when an insert or update is being performed
CREATE OR ALTER TRIGGER EncryptPhoneNo
ON [User]
AFTER INSERT, UPDATE
AS
BEGIN
    -- Updating the Encrypted_Phone_No only when the Phone_No is given
    UPDATE u
    SET u.Encrypted_Phone_No = CASE WHEN i.Phone_No IS NOT NULL
                                     THEN ENCRYPTBYKEY(KEY_GUID('UserDataSymmetricKey'), CONVERT(VARBINARY(MAX), i.Phone_No))
                                     ELSE NULL 
                                END
    FROM [User] u
    INNER JOIN inserted i ON u.User_ID = i.User_ID;
END;

--Creating a view to display user details
CREATE OR ALTER VIEW User_Details_Display
AS
SELECT 
    User_ID,
    First_Name,
    Last_Name,
    Email,
    Date_Of_Birth,
    Encrypted_Phone_No as Phone_no,
    User_Type
FROM [User];

select * from User_Details_Display

-- Creating a view to decrypt the Phone_No column
CREATE OR ALTER VIEW DecryptedPhoneView
AS
SELECT 
    User_ID,
    First_Name,
    Last_Name,
    Email,
    Date_Of_Birth,
    CONVERT(BIGINT, DecryptByKey(Encrypted_Phone_No)) AS Phone_No,
    User_Type
FROM [User];

select * from DecryptedPhoneView where user_id in (1,2,3,4);


/*
    VIEWS QUERIES
*/

-- 1. Active Properties with Details
CREATE VIEW ActivePropertyDetails AS
    SELECT
        P.Property_ID,
        P.Address_Line_1,
        P.Address_Line_2,
        P.City,
        P.State,
        P.Zipcode,
        PD.Bedroom,
        PD.Bathroom,
        PD.Area_Size,
        L.Lister_ID,
        L.Lister_Type,
        L.Active_Properties
    FROM
        Property AS P
    JOIN
        Property_Detail AS PD ON P.Property_ID = PD.Property_ID
    JOIN
        Lister AS L ON P.Lister_ID = L.Lister_ID
    JOIN
        Listing AS LI ON P.Property_ID = LI.Property_ID
    WHERE
        LI.Listing_Status = 'Active';

-- Demonstartion of view ActivePropertyDetails
select * from ActivePropertyDetails;
	

-- 2. Property Details with Amenities
CREATE VIEW Property_Amenities AS
    SELECT
        P.Property_ID,
        P.Address_Line_1,
        P.Address_Line_2,
        P.City,
        P.State,
        P.Zipcode,
        PD.Bedroom,
        PD.Bathroom,
        PD.Area_Size,
        A.Water,
        A.Gas,
        A.Electricity,
        A.Parking,
        A.Pets_Allowed
    FROM
        Property P
    INNER JOIN
        Property_Detail PD ON P.Property_ID = PD.Property_ID
    INNER JOIN
        Listing L ON P.Property_ID = L.Property_ID
    INNER JOIN
        Amenity A ON L.Listing_ID = A.Listing_ID;

-- Demonstartion of view Property_Amenities
select * from Property_Amenities


-- 3. Customer Reviews and Ratings
CREATE VIEW Customer_Reviews AS
    SELECT
        R.Review_ID,
        U.First_Name AS Customer_FirstName,
        U.Last_Name AS Customer_LastName,
        U.Email AS Customer_Email,
        U2.User_ID AS Lister_ID,
        U2.First_Name AS Lister_FirstName,
        U2.Last_Name AS Lister_LastName,
        P.Property_ID,
        P.Address_Line_1,
        P.City,
        P.State,
        P.Zipcode,
        R.Rating,
        R.Comment
    FROM
        Review R
    INNER JOIN
        [User] U ON R.Customer_ID = U.User_ID
    INNER JOIN
        [User] U2 ON R.Lister_ID = U2.User_ID
    INNER JOIN
        Property P ON R.Property_ID = P.Property_ID;

-- Demonstartion of view Customer_Reviews
select * from Customer_Reviews


-- 4. Properties Available for Selling
CREATE VIEW Properties_For_Sale AS
    SELECT
        P.Property_ID,
        P.Address_Line_1,
        P.Address_Line_2,
        P.City,
        P.State,
        P.Zipcode,
        PD.Bedroom,
        PD.Bathroom,
        PD.Area_Size,
        S.Asking_Price
    FROM
        Property P
    INNER JOIN
        Property_Detail PD ON P.Property_ID = PD.Property_ID
    INNER JOIN
        Listing L ON P.Property_ID = L.Property_ID
    INNER JOIN
        Sell S ON L.Listing_ID = S.Sell_ID
    WHERE
        L.Listing_Type = 'S' AND
        L.Listing_Status = 'Active';

-- Demonstartion of view Properties_For_Sale
Select * from Properties_For_Sale


-- 5. View that includes the total number of registered customers, the number of customers who have rent transactions, 
-- the number of customers who have sell transactions, and the number of inactive customers (those who haven't engaged in any transactions)
CREATE VIEW CustomerTransactionSummary AS
SELECT
    (SELECT COUNT(*) FROM Customer) AS Total_Customers,
    (SELECT COUNT(DISTINCT Customer_ID) FROM Rent_Transaction) AS Customers_With_Rent_Transaction,
    (SELECT COUNT(DISTINCT Customer_ID) FROM Sell_Transaction) AS Customers_With_Sell_Transaction,
    (SELECT COUNT(*) FROM Customer) - 
        (SELECT COUNT(DISTINCT Customer_ID) FROM Rent_Transaction) - 
        (SELECT COUNT(DISTINCT Customer_ID) FROM Sell_Transaction) AS Inactive_Customers;

-- Demonstartion of view CustomerTransactionSummary
SELECT * from CustomerTransactionSummary

-- 6. User Analysis view for the data visulization to see diiferent types of User in the System.
CREATE OR ALTER VIEW UserSummary AS
    SELECT
        (SELECT COUNT(*) FROM [User]) AS TotalUsers,
        (SELECT COUNT(DISTINCT Lister_ID) FROM Lister Where Lister_Type='O') As Owners,
        (SELECT COUNT(DISTINCT Lister_ID) FROM Lister Where Lister_Type='B') As Buyers,
        (SELECT COUNT(DISTINCT Customer_ID) FROM Customer Where Customer_Type='Rent') As RenterCustomers,
        (SELECT COUNT(DISTINCT Customer_ID) FROM Customer Where Customer_Type='Sell') As BuyingCustomers;

-- Demonstartion of view UserSummary
SELECT * from UserSummary;

/*
    PROCEDURES QUERIES
*/

-- 1. GetCustomerTransactions - This procedure retrieves rent or sell transactions for a given customer. It first 
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


-- 2. GetPropertyListings - This stored procedure retrieves a list of property listings based on the provided criteria such as 
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


-- 3. GetListerPropertiesWithDetails - This procedure will retrieve all properties listed by a specific Lister along with the details of each property, 
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


-- 4. GetListingsByDaysAvailable stored procedure retrieves listings from the Listing table and calculates the number of days each 
-- listing has been available. It then filters the results to include only those listings with a number of days available 
-- less than or equal to the value specified by the @maxDays parameter.
CREATE OR ALTER PROCEDURE GetListingsByDaysAvailable
    @maxDays INT
AS
BEGIN
    DECLARE @currentDate DATE = GETDATE();
    
    SELECT *,
           DATEDIFF(DAY, Listing_Date, @currentDate) AS Days_Available
    FROM Listing
    WHERE DATEDIFF(DAY, Listing_Date, @currentDate) <= @maxDays 
        AND DATEDIFF(DAY, Listing_Date, @currentDate) > 0;
END;

-- Demonstartion of stored procedure GetListingsByDaysAvailable
EXEC GetListingsByDaysAvailable 100;


/*
    FUNCTIONS QUERIES
*/

-- 1. GetListerPropertyStats returns a table with various statistics related to the properties listed by a specific lister. 
-- It calculates the total number of properties listed, the count of active and inactive properties, the count of rental and sale properties, 
-- as well as statistics such as maximum and minimum bedrooms, bathrooms, and area sizes.
CREATE FUNCTION GetListerPropertyStats (@ListerID INTEGER)
RETURNS TABLE
AS
RETURN (
    SELECT
        @ListerID AS ListerID,
        COUNT(*) AS TotalPropertiesListed,
        SUM(CASE WHEN l.Listing_Status = 'Active' THEN 1 ELSE 0 END) AS ActiveProperties,
        SUM(CASE WHEN l.Listing_Status = 'Inactive' THEN 1 ELSE 0 END) AS InactiveProperties,
        SUM(CASE WHEN l.Listing_Type = 'R' THEN 1 ELSE 0 END) AS RentalProperties,
        SUM(CASE WHEN l.Listing_Type = 'S' THEN 1 ELSE 0 END) AS SaleProperties,
        MAX(pd.Bedroom) AS MaxBedrooms,
        MIN(pd.Bedroom) AS MinBedrooms,
        MAX(pd.Bathroom) AS MaxBathrooms,
        MIN(pd.Bathroom) AS MinBathrooms,
        AVG(pd.Area_Size) AS AvgAreaSize,
        MAX(pd.Area_Size) AS MaxAreaSize,
        MIN(pd.Area_Size) AS MinAreaSize
    FROM Property p
    JOIN Property_Detail pd ON p.Property_ID = pd.Property_ID
    JOIN Listing l ON p.Property_ID = l.Property_ID
    WHERE p.Lister_ID = @ListerID
);

--- to test the function
SELECT * from GetListerPropertyStats(6);

-- 2. GetFullNameOfUser retrieves the full name of the user associated with the provided user ID by concatenating the 
-- First_Name and Last_Name columns from the [User] table
CREATE OR ALTER FUNCTION GetFullNameOfUser(@UserID INTEGER)
RETURNS VARCHAR(50)
AS 
BEGIN 
    DECLARE @FullName VARCHAR(100);

    SELECT @FullName = CONCAT(First_Name, ' ', Last_Name)
    FROM [User]
    WHERE User_ID = @UserID;

    RETURN @FullName;
END;

--- to test the function
SELECT *, dbo.GetFullNameOfUser(User_ID) AS Full_Name FROM [User];


-- 3. GetTopRatedListers retrieves the top N listers based on their average rating and the number of active properties they have listed.
-- It orders the results by average rating and total active properties in descending order and returns the top N listers.
CREATE OR ALTER FUNCTION GetTopRatedListers(@N INT)
RETURNS TABLE
AS
RETURN (
    SELECT TOP (@N) 
        L.Lister_ID,
        dbo.GetFullNameOfUser(U.User_ID) AS Full_Name,
        AVG(R.Rating) AS Average_Rating,
        COUNT(DISTINCT P.Property_ID) AS Total_Active_Properties
    FROM Lister L
    INNER JOIN [User] U ON L.Lister_ID = U.User_ID
    INNER JOIN Review R ON L.Lister_ID = R.Lister_ID
    INNER JOIN Property P ON L.Lister_ID = P.Lister_ID
    INNER JOIN Listing LI ON P.Property_ID = LI.Property_ID
    WHERE LI.Listing_Status = 'Active'
    GROUP BY L.Lister_ID, U.User_ID
    ORDER BY Average_Rating DESC, Total_Active_Properties DESC
);

--- to test the function
SELECT * FROM dbo.GetTopRatedListers(12);


-- 4. UDF that calculates the total cost of renting a property for a given duration, taking into account the monthly rent, move-in cost, and security deposit.
--This UDF will take three parameters: Rent_ID (identifying the rental), DurationInMonths (the duration of the rental), and MoveInDate (the date when the rental begins).
CREATE OR ALTER FUNCTION CalculateTotalRentCost (
    @RentID INTEGER,
    @DurationInMonths INTEGER,
    @MoveInDate DATETIME
)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @TotalCost DECIMAL(10, 2);
    SELECT @TotalCost =
        (RT.Monthly_Rent * @DurationInMonths) +
        R.Move_In_Cost +
        R.Security_Deposit
    FROM Rent_Transaction RT
	join Rent R on RT.Rent_ID = R.Rent_ID
    WHERE RT.Rent_ID = @RentID
    AND RT.Transaction_Date = (
        SELECT MAX(Transaction_Date)
        FROM Rent_Transaction
        WHERE Rent_ID = @RentID
        AND Transaction_Date <= @MoveInDate
    );
    RETURN @TotalCost;
END;

--- to test the function
DECLARE @RentID INTEGER = 15; -- Provide the Rent ID
DECLARE @DurationInMonths INTEGER = 12; -- Duration in months
DECLARE @MoveInDate DATETIME = '2024-09-01'; -- Move in date
 
SELECT dbo.CalculateTotalRentCost(@RentID, @DurationInMonths, @MoveInDate) AS TotalCost;


-- UDF Computed Column functions

-- 5. Computed Column for Lister Activity Status
--UDF to determine the activity status of a Lister based on their number of active properties:
-- Created a UDF to determine Lister activity status
CREATE OR ALTER FUNCTION DetermineListerActivityStatus
(
    @ListerID INT
)
RETURNS NVARCHAR(50)
AS
BEGIN
    DECLARE @ActivityStatus NVARCHAR(50);

    SELECT @ActivityStatus = 
        CASE 
            WHEN Active_Properties > 0 THEN 'Active'
            ELSE 'Inactive'
        END
    FROM Lister
    WHERE Lister_ID = @ListerID;

    RETURN @ActivityStatus;
END;
GO

-- Add a computed column to the Lister table for Activity_Status
ALTER TABLE Lister
ADD Activity_Status AS dbo.DetermineListerActivityStatus(Lister_ID);
GO

-- 6. customer satisfaction score based on the reviews given by customer
CREATE FUNCTION dbo.GetCustomerSatisfactionScore
(
    @CustomerID INT
)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @SatisfactionScore DECIMAL(10, 2);
 
    SELECT @SatisfactionScore = (
        SELECT (AVG(Rating) * 0.8) + (COUNT(*) * 0.2)
        FROM Review
        WHERE Customer_ID = @CustomerID
    );
 
    RETURN @SatisfactionScore;
END;
GO
 
-- Add a computed column to the Customer table for Satisfaction_Score
ALTER TABLE Customer
ADD Satisfaction_Score AS dbo.GetCustomerSatisfactionScore(Customer_ID);
GO


-- 7. This user-defined SQL function, CalculateNeighborhoodScore, returns a table with computed columns 
-- for the average rating and the total number of reviews for properties within a specified zipcode. 
-- By executing this function and analyzing the results, users can visualize popular locations based 
-- on the satisfaction level and feedback volume of properties in each neighborhood.
CREATE OR ALTER FUNCTION CalculateNeighborhoodScore
(
    @Zipcode INTEGER
)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        P.Zipcode,
        ROUND(AVG(R.Rating),2) AS AvgRating,
        COUNT(R.Review_ID) AS NumReviews
    FROM 
        Property P
    INNER JOIN 
        Review R ON P.Property_ID = R.Property_ID
    WHERE 
        P.Zipcode = @Zipcode
    GROUP BY 
        P.Zipcode
);

--- to test the function
SELECT 
    DISTINCT p.Zipcode,
    p.[City],
    p.[State],
    d.AvgRating,
    d.NumReviews,
    COUNT(*) AS NoOfProperties
FROM 
    Property p
CROSS APPLY 
    dbo.CalculateNeighborhoodScore(p.Zipcode) d
    GROUP BY p.Zipcode, p.[City], p.[State], d.AvgRating, d.NumReviews;



