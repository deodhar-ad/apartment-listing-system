
--List of Active Properties with Lister Details
CREATE VIEW ActivePropertiesWithLister AS
SELECT P.Property_ID, P.Address, P.Price, P.Property_Type,
       L.Lister_ID, L.Lister_Type, L.Active_Properties,
       Ls.Listing_ID, Ls.Listing_Date, Ls.Status
FROM Property P
JOIN Listing Ls ON P.Property_ID = Ls.Property_ID
JOIN Lister L ON Ls.Lister_ID = L.Lister_ID
WHERE Ls.Status = 'Active';

--Listers with Most Active Properties:
CREATE VIEW TopActiveListers AS
SELECT L.Lister_ID, L.Lister_Type, L.Active_Properties,
       U.First_Name + ' ' + U.Last_Name AS Lister_Name
FROM Lister L
JOIN [User] U ON L.Lister_ID = U.User_ID
ORDER BY L.Active_Properties DESC;


--Monthly Listing Trends:
CREATE VIEW MonthlyListingTrends AS
SELECT MONTH(Ls.Listing_Date) AS Listing_Month,
       YEAR(Ls.Listing_Date) AS Listing_Year,
       COUNT(*) AS Total_Listings
FROM Listing Ls
GROUP BY MONTH(Ls.Listing_Date), YEAR(Ls.Listing_Date)
ORDER BY Listing_Year, Listing_Month;


--Properties with Price Range Categories:
CREATE VIEW PriceRangeProperties AS
SELECT Property_ID, Address, Price,
       CASE
           WHEN Price < 100000 THEN 'Low Range'
           WHEN Price BETWEEN 100000 AND 300000 THEN 'Medium Range'
           WHEN Price > 300000 THEN 'High Range'
       END AS Price_Category
FROM Property;


--Recently Sold Properties:
CREATE VIEW RecentlySoldProperties AS
SELECT P.Property_ID, P.Address, P.Price,
       L.Lister_ID, L.Lister_Type,
       Ls.Listing_ID, Ls.Listing_Date, Ls.Status
FROM Property P
JOIN Listing Ls ON P.Property_ID = Ls.Property_ID
JOIN Lister L ON Ls.Lister_ID = L.Lister_ID
WHERE Ls.Status = 'Sold';

--Average Price per Property Type
CREATE VIEW AveragePricePerType AS
SELECT Property_Type, AVG(Price) AS Avg_Price
FROM Property
GROUP BY Property_Type;


--Listers with No Active Properties:
CREATE VIEW ListersWithNoActiveProperties AS
SELECT L.Lister_ID, L.Lister_Type, L.Active_Properties,
       U.First_Name + ' ' + U.Last_Name AS Lister_Name
FROM Lister L
JOIN [User] U ON L.Lister_ID = U.User_ID
WHERE L.Active_Properties = 0;


--Properties with More Bathrooms than Bedrooms
CREATE VIEW PropertiesMoreBathrooms AS
SELECT Property_ID, Address, Bedrooms, Bathrooms
FROM Property
WHERE Bathrooms > Bedrooms;
