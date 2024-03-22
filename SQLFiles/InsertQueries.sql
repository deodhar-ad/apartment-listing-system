Use ApartmentFinder;
Go

-- Inserting into [User] table
INSERT INTO [User] (First_Name, Last_Name, Phone_No, Email, Date_Of_Birth, User_Type) VALUES ('John', 'Doe', 1234567890, 'john.doe@example.com', '1990-01-01', 'C');
INSERT INTO [User] (First_Name, Last_Name, Phone_No, Email, Date_Of_Birth, User_Type) VALUES ('Jane', 'Smith', 9876543210, 'jane.smith@example.com', '1995-05-15', 'L');
INSERT INTO [User] (First_Name, Last_Name, Phone_No, Email, Date_Of_Birth, User_Type) VALUES ('Alice', 'Johnson', 5551234567, 'alice.johnson@example.com', '1980-08-20', 'C');
INSERT INTO [User] (First_Name, Last_Name, Phone_No, Email, Date_Of_Birth, User_Type) VALUES ('Michael', 'Brown', 9998887777, 'michael.brown@example.com', '1975-03-10', 'L');
INSERT INTO [User] (First_Name, Last_Name, Phone_No, Email, Date_Of_Birth, User_Type)
VALUES 
('Emily', 'Wilson', 1112223333, 'emily.wilson@example.com', '1988-09-25', 'C'),
('Daniel', 'Taylor', 4445556666, 'daniel.taylor@example.com', '1992-07-12', 'L'),
('Olivia', 'Martinez', 7778889999, 'olivia.martinez@example.com', '1985-12-05', 'C'),
('William', 'Anderson', 3334445555, 'william.anderson@example.com', '1979-11-17', 'L'),
('Sophia', 'Thomas', 6667778888, 'sophia.thomas@example.com', '1983-04-08', 'C'),
('Alexander', 'Hernandez', 2223334444, 'alexander.hernandez@example.com', '1998-02-20', 'L'),
('Isabella', 'Garcia', 5556667777, 'isabella.garcia@example.com', '1973-06-30', 'C'),
('James', 'Jackson', 8889990000, 'james.jackson@example.com', '1991-10-14', 'L'),
('Charlotte', 'Lopez', 4445556666, 'charlotte.lopez@example.com', '1986-08-03', 'C'),
('Benjamin', 'Lee', 7778889999, 'benjamin.lee@example.com', '1982-05-27', 'L'),
('Amelia', 'Perez', 1112223333, 'amelia.perez@example.com', '1977-04-12', 'C'),
('Michael', 'Gonzalez', 8889990000, 'michael.gonzalez@example.com', '1994-12-09', 'L'),
('Evelyn', 'Wilson', 3334445555, 'evelyn.wilson@example.com', '1989-03-23', 'C'),
('Daniel', 'Harris', 6667778888, 'daniel.harris@example.com', '1984-01-05', 'L'),
('Mia', 'King', 5556667777, 'mia.king@example.com', '1997-07-18', 'C'),
('Matthew', 'Wright', 2223334444, 'matthew.wright@example.com', '1981-09-02', 'L'),
('Harper', 'Scott', 7778889999, 'harper.scott@example.com', '1976-02-15', 'C'),
('Alexander', 'Green', 1112223333, 'alexander.green@example.com', '1990-06-28', 'L'),
('Charlotte', 'Baker', 8889990000, 'charlotte.baker@example.com', '1978-08-19', 'C'),
('Abigail', 'Adams', 3334445555, 'abigail.adams@example.com', '1993-04-07', 'L'),
('Ryan', 'Nelson', 6667778888, 'ryan.nelson@example.com', '1987-11-10', 'C'),
('David', 'Hill', 5556667777, 'david.hill@example.com', '1980-05-03', 'L'),
('Elizabeth', 'Ramirez', 2223334444, 'elizabeth.ramirez@example.com', '1995-08-16', 'C'),
('John', 'Roberts', 7778889999, 'john.roberts@example.com', '1984-01-25', 'L'),
('Ella', 'Turner', 1112223333, 'ella.turner@example.com', '1979-10-29', 'C'),
('Joseph', 'Cook', 8889990000, 'joseph.cook@example.com', '1996-03-13', 'L'),
('Avery', 'Morris', 3334445555, 'avery.morris@example.com', '1983-07-22', 'C'),
('Emma', 'White', 6667778888, 'emma.white@example.com', '1971-11-05', 'L'),
('Sofia', 'Thompson', 5556667777, 'sofia.thompson@example.com', '1999-09-08', 'C'),
('Noah', 'Harris', 2223334444, 'noah.harris@example.com', '1976-06-11', 'L'),
('Madison', 'Hall', 7778889999, 'madison.hall@example.com', '1988-02-14', 'C'),
('Liam', 'Adams', 1112223333, 'liam.adams@example.com', '1992-04-17', 'L');

-- Inserting into Lister table
INSERT INTO Lister (Lister_ID, Lister_Type, Active_Properties) VALUES (2, 'B', 5);
INSERT INTO Lister (Lister_ID, Lister_Type, Active_Properties) VALUES (4, 'O', 3);
INSERT INTO Lister (Lister_ID, Lister_Type) 
VALUES 
(6, 'B'),
(8, 'O');
INSERT INTO Lister (Lister_ID, Lister_Type, Active_Properties) 
VALUES 
(10, 'B', 0),
(12, 'O', 0),
(14, 'B', 0),
(16, 'O', 0),
(18, 'B', 0),
(20, 'O', 0),
(22, 'B', 0),
(24, 'O', 0),
(26, 'B', 0),
(28, 'O', 0),
(30, 'B', 0),
(32, 'O', 0),
(34, 'B', 0),
(36, 'O', 0);

-- Inserting into Customer table
INSERT INTO Customer (Customer_ID, Customer_Type, Budget_Min, Budget_Max, Preferred_Location) VALUES (1, 'Rent', 1000, 2000, 'Downtown');
INSERT INTO Customer (Customer_ID, Customer_Type, Budget_Min, Budget_Max, Preferred_Location) VALUES (3, 'Sell', 200000, 300000, 'Suburb');
INSERT INTO Customer (Customer_ID, Customer_Type, Budget_Min, Budget_Max, Preferred_Location) 
VALUES 
-- 8 more records with Customer_Type 'Rent'
(5, 'Rent', NULL, NULL, NULL),
(7, 'Rent', NULL, NULL, NULL),
(9, 'Rent', 1500, 2500, 'Midtown'),
(11, 'Rent', 1200, 1800, 'Uptown'),
(13, 'Rent', 800, 1500, 'Suburb'),
(15, 'Rent', NULL, NULL, NULL),
(17, 'Rent', NULL, NULL, NULL),
(35, 'Rent', NULL, 3000, 'Chinatown'),
-- 8 more records with Customer_Type 'Sell'
(19, 'Sell', 180000, 250000, 'Downtown'),
(21, 'Sell', 250000, 400000, 'Midtown'),
(23, 'Sell', NULL, NULL, NULL),
(25, 'Sell', 150000, 200000, 'Suburb'),
(27, 'Sell', NULL, NULL, NULL),
(29, 'Sell', 300000, 350000, 'Uptown'),
(31, 'Sell', NULL, NULL, NULL),
(33, 'Sell', 200000, 300000, 'Downtown');

-- Inserting into Message table
INSERT INTO [Message] (Customer_ID, Lister_ID, Subject, Content) VALUES (1, 2, 'Regarding Property Inquiry', 'I am interested in renting the property listed by you.');
INSERT INTO [Message] (Customer_ID, Lister_ID, Subject, Content) VALUES (3, 4, 'Property Inquiry', 'I am interested in buying this property.');

-- Inserting into Property table
INSERT INTO Property (Lister_ID, Address_Line_1, Address_Line_2, City, State, Country, Zipcode) VALUES (2, '123 Main St', '', 'New York', 'NY', 'USA', 10001);
INSERT INTO Property (Lister_ID, Address_Line_1, Address_Line_2, City, State, Country, Zipcode) VALUES (4, '456 Oak St', 'Apt 3B', 'Los Angeles', 'CA', 'USA', 90001);

-- Inserting into Property_Detail table
INSERT INTO Property_Detail (Property_ID, Bedroom, Bathroom, Area_Size, Description) VALUES (1, 2, 1, 1000, 'Cozy apartment in the heart of the city.');
INSERT INTO Property_Detail (Property_ID, Bedroom, Bathroom, Area_Size, Description) VALUES (2, 3, 2, 1500, 'Spacious house with a backyard.');

-- Inserting into Listing table
INSERT INTO Listing (Property_ID, Listing_Date, Listing_Status, Listing_Type) VALUES (1, '2024-03-17', 'Active', 'R');
INSERT INTO Listing (Property_ID, Listing_Date, Listing_Status, Listing_Type) VALUES (2, '2024-03-17', 'Active', 'S');

-- Inserting into Amenity table
INSERT INTO Amenity (Listing_ID, Water, Gas, Electricity, Parking, Pets_Allowed) VALUES (1, 1, 1, 1, 1, 0);
INSERT INTO Amenity (Listing_ID, Water, Gas, Electricity, Parking, Pets_Allowed) VALUES (2, 1, 1, 1, 1, 1);

-- Inserting into Rent table
INSERT INTO Rent (Rent_ID, Move_In_Cost, Security_Deposit, Available_State_Date, Available_End_Date) VALUES (1, 1500, 2000, '2024-04-01', '2025-03-31');

-- Inserting into Sell table
INSERT INTO Sell (Sell_ID, Asking_Price, Mortgage_Allowed) VALUES (2, 250000, 1);

-- Inserting into Sell_Transaction table
INSERT INTO Sell_Transaction (Sell_ID, Customer_ID, Buying_Price, Transaction_Date, Transaction_Status) VALUES (2, 3, 260000, CURRENT_TIMESTAMP, 'Completed');

-- Inserting into Rent_Transaction table
INSERT INTO Rent_Transaction (Rent_ID, Customer_ID, Monthly_Rent, Transaction_Date, Transaction_Status) VALUES (1, 1, 1500, CURRENT_TIMESTAMP, 'Completed');

-- Inserting into Rent_Legal_Document table
INSERT INTO Rent_Legal_Document (Rent_Transaction_ID, Agreement_Date, Lease_Start_Date, Lease_End_Date, Terms_And_Condition) VALUES (1, '2024-03-17', '2024-04-01', '2025-03-31', 'Standard lease terms and conditions apply.');

-- Inserting into Sell_Legal_Document table
INSERT INTO Sell_Legal_Document (Sell_Transaction_ID, Agreement_Date, Sale_Deed, Mortgage_Approval, Terms_And_Condition) VALUES (1, '2024-03-17', 'Sale Deed Document', 'Mortgage Approval Document', 'Standard sale terms and conditions apply.');

-- Inserting into Review table
INSERT INTO Review (Lister_ID, Customer_ID, Property_ID, Rating, Comment) VALUES (2, 1, 1, 4.5, 'Great experience renting this property.');


SELECT * FROM [User];
SELECT * FROM Lister;
SELECT * FROM Customer;
SELECT * FROM [Message];
SELECT * FROM Property;
SELECT * FROM Property_Detail;
SELECT * FROM Listing;
SELECT * FROM Amenity;
SELECT * FROM Rent;
SELECT * FROM Sell;
SELECT * FROM Sell_Transaction;
SELECT * FROM Rent_Transaction;
SELECT * FROM Rent_Legal_Document;
SELECT * FROM Sell_Legal_Document;
SELECT * FROM Review;