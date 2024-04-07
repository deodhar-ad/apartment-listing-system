USE ApartmentFinder;
GO

-- Index on Lister table for Lister_Type
CREATE NONCLUSTERED INDEX IX_Lister_ListerType ON Lister(Lister_Type);
-- Query to select listers of a specific type
SELECT *
FROM Lister
WHERE Lister_Type = 'O';

-- Index on Customer table for Customer_Type:
CREATE NONCLUSTERED INDEX IX_Customer_CustomerType ON Customer(Customer_Type);
-- Query to select customers of a specific type
SELECT *
FROM Customer
WHERE Customer_Type = 'Rent';

-- Index on Message table for Timestamp:
CREATE NONCLUSTERED INDEX IX_Message_Timestamp ON [Message]([Timestamp]);
-- Query to select messages sent within a specific time range
SELECT *
FROM Message
WHERE Timestamp >= CONVERT(TIMESTAMP, '2023-01-01') AND Timestamp < CONVERT(TIMESTAMP, '2024-02-01')
ORDER BY Timestamp DESC;

-- Index on Property table for Lister_ID:
CREATE NONCLUSTERED INDEX IX_Property_ListerID ON Property(Lister_ID);
-- Query to select properties listed by a specific lister
SELECT *
FROM Property
WHERE Lister_ID = 12;

-- Index on Listing table for Listing_Type and Listing_Status:
CREATE NONCLUSTERED INDEX IX_Listing_ListingType_ListingStatus 
    ON Listing(Listing_Type, Listing_Status);
-- Query to select active rental listings
SELECT *
FROM Listing
WHERE Listing_Type = 'R' AND Listing_Status = 'Active';

