USE ApartmentFinder;
GO

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