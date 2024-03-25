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
('Liam', 'Adams', 1112223333, 'liam.adams@example.com', '1992-04-17', 'L'),
('Liam', 'Thompson', 5556667777, 'liam.thompson@example.com', '1999-09-08', 'C'),
('Kate', 'Harris', 2223334444, 'kate.harris@example.com', '1976-06-11', 'L'),
('Vars', 'Hall', 7778889999, 'Vars.hall@example.com', '1988-02-14', 'C'),
('Vineeth', 'Adams', 1112223333, 'Vineeth.adams@example.com', '1992-04-17', 'L');
 
 
-- Inserting into Lister table
INSERT INTO Lister (Lister_ID, Lister_Type, Active_Properties) VALUES (2, 'B', 5);
INSERT INTO Lister (Lister_ID, Lister_Type, Active_Properties) VALUES (4, 'O', 3);
INSERT INTO Lister (Lister_ID, Lister_Type, Active_Properties)
VALUES
(6, 'B', 4),
(8, 'O', 3),
(10, 'B', 2),
(12, 'O', 4),
(14, 'B', 3),
(16, 'O', 6),
(18, 'B', 1),
(20, 'O', 3),
(22, 'B', 2),
(24, 'O', 1),
(26, 'B', 4),
(28, 'O', 2),
(30, 'B', 3),
(32, 'O', 1),
(34, 'B', 4),
(36, 'O', 1),
(38, 'B', 4),
(40, 'O', 1);
 
 
-- Inserting into Customer table
INSERT INTO Customer (Customer_ID, Customer_Type, Budget_Min, Budget_Max, Preferred_Location) VALUES (1, 'Rent', 1000, 2000, 'Downtown');
INSERT INTO Customer (Customer_ID, Customer_Type, Budget_Min, Budget_Max, Preferred_Location) VALUES (3, 'Sell', 200000, 300000, 'Suburb');
INSERT INTO Customer (Customer_ID, Customer_Type, Budget_Min, Budget_Max, Preferred_Location)
VALUES
-- 8 more records with Customer_Type 'Rent'
(5, 'Rent', NULL, NULL, NULL),
(7, 'Rent', NULL, NULL, NULL),
(9, 'Rent', 1500, 2500, 'New York'),
(11, 'Rent', 1200, 1800, 'Denver'),
(13, 'Rent', 800, 1500, 'Boston'),
(15, 'Rent', NULL, NULL, NULL),
(17, 'Rent', NULL, NULL, NULL),
(35, 'Rent', NULL, 3000, 'Miami'),
-- 8 more records with Customer_Type 'Sell'
(19, 'Sell', 180000, 250000, 'Chicago'),
(21, 'Sell', 250000, 400000, 'Boston'),
(23, 'Sell', NULL, NULL, NULL),
(25, 'Sell', 150000, 200000, 'Miami'),
(27, 'Sell', NULL, NULL, NULL),
(29, 'Sell', 300000, 350000, 'Boston'),
(31, 'Sell', NULL, NULL, NULL),
(33, 'Sell', 200000, 300000, 'Boston');
 
-- Inserting into Message table
INSERT INTO [Message] (Customer_ID, Lister_ID, Subject, Content) VALUES (1, 2, 'Regarding Property Inquiry', 'I am interested in renting the property listed by you.');
INSERT INTO [Message] (Customer_ID, Lister_ID, Subject, Content) VALUES (3, 4, 'Property Inquiry', 'I am interested in buying this property.');
INSERT INTO [Message] (Customer_ID, Lister_ID, Subject, Content)
VALUES
-- Rent Inquires
(5, 6, 'Inquiry about rental property', 'I would like more information about the rental property you have listed.'),
(7, 6, 'Interested in renting', 'I am interested in renting my property and would like to discuss further details.'),
(9, 10, 'Rental property availability', 'Is the rental property still available?'),
(11, 14, 'Property viewing request', 'Can I schedule a viewing for the property you listed?'),
(13, 14, 'Inquiry about rental terms', 'What are the terms for renting the property?'),
-- Sell Inquiries
(19, 8, 'Offer for selling property', 'I would like to make an offer for your property.'),
(19, 12, 'Buying property location', 'Is the selling property located in a safe neighborhood?'),
(19, 16, 'Property price negotiation', 'Are you open to negotiating the price for the property?'),
(21, 28, 'Selling property inquiry', 'Can you provide more details about the property you have listed for sale?'),
(23, 24, 'Selling property amenities', 'What amenities are included with the selling property?');
 
-- Inserting into Property table
INSERT INTO Property (Lister_ID, Address_Line_1, Address_Line_2, City, State, Country, Zipcode) VALUES (2, '123 Main St', '', 'New York', 'NY', 'USA', 10001);
INSERT INTO Property (Lister_ID, Address_Line_1, Address_Line_2, City, State, Country, Zipcode) VALUES (4, '456 Oak St', 'Apt 3B', 'Los Angeles', 'CA', 'USA', 90001);
INSERT INTO Property (Lister_ID, Address_Line_1, Address_Line_2, City, State, Country, Zipcode)
VALUES
(6, '123 Main St', 'Apt 201', 'New York', 'NY', 'USA', 10001),
(8, '789 Elm St', 'Unit 5C', 'San Francisco', 'CA', 'USA', 94103),
(10, '456 Pine St', 'Suite 10D', 'Los Angeles', 'CA', 'USA', 90002),
(12, '890 Maple Ave', 'Unit 2A', 'Chicago', 'IL', 'USA', 60611),
(14, '567 Oak St', 'Apt 15E', 'Miami', 'FL', 'USA', 33101),
(16, '432 Birch St', 'Apt 304', 'Seattle', 'WA', 'USA', 98101),
(18, '321 Cedar St', 'Unit 6B', 'Boston', 'MA', 'USA', 02108),
(20, '765 Walnut St', 'Apt 401', 'Houston', 'TX', 'USA', 77002),
(22, '234 Pine St', 'Suite 8F', 'San Diego', 'CA', 'USA', 92101),
(24, '876 Maple St', 'Apt 102', 'Philadelphia', 'PA', 'USA', 19103),
(26, '543 Elm St', 'Unit 3D', 'Portland', 'OR', 'USA', 97205),
(28, '987 Oak St', 'Apt 1502', 'Atlanta', 'GA', 'USA', 30303),
(30, '210 Cedar St', 'Apt 7A', 'Dallas', 'TX', 'USA', 75201),
(32, '654 Birch St', 'Unit 20G', 'Phoenix', 'AZ', 'USA', 85001),
(34, '1098 Pine St', 'Apt 1003', 'Denver', 'CO', 'USA', 80202),
(36, '765 Maple St', 'Suite 401', 'Las Vegas', 'NV', 'USA', 89101),
(38, '1098 Pine St', 'Apt 1003', 'Boston', 'MA', 'USA', 80202),
(40, '765 Maple St', 'Suite 401', 'Boston', 'MA', 'USA', 89101);
 
-- Inserting into Property_Detail table
INSERT INTO Property_Detail (Property_ID, Bedroom, Bathroom, Area_Size, Description) VALUES (1, 2, 1, 1000, 'Cozy apartment in the heart of the city.');
INSERT INTO Property_Detail (Property_ID, Bedroom, Bathroom, Area_Size, Description) VALUES (2, 3, 2, 1500, 'Spacious house with a backyard.');
INSERT INTO Property_Detail (Property_ID, Bedroom, Bathroom, Area_Size, Description)
VALUES
(3, 2, 1, 1000, 'Cozy apartment with city view.'),
(4, 4, 3, 2200, 'Modern apartment with balcony overlooking the park.'),
(5, 3, 2, 1800, 'Charming apartment with a fireplace.'),
(6, 2, 1, 1200, 'Bright apartment with hardwood floors.'),
(7, 5, 4, 3000, 'Luxurious apartment with a pool and tennis court.'),
(8, 3, 2, 1600, 'Renovated apartment with stainless steel appliances.'),
(9, 2, 2, 1400, 'Contemporary apartment with exposed brick walls.'),
(10, 4, 3, 2400, 'Elegant apartment with a garden and fountain.'),
(11, 3, 2, 1700, 'Coastal apartment with ocean views.'),
(12, 2, 1, 1100, 'Quaint apartment with a wrap-around porch.'),
(13, 4, 3, 2200, 'Sleek apartment with panoramic skyline views.'),
(14, 3, 2, 1600, 'Mountain apartment with hiking trails nearby.'),
(15, 2, 1, 1300, 'Rustic apartment with a stone fireplace.'),
(16, 5, 4, 3200, 'Stately apartment with landscaped grounds.'),
(17, 3, 2, 1900, 'Urban apartment with rooftop access.'),
(18, 2, 2, 1500, 'Mid-century modern apartment with open floor plan.'),
(19, 3, 2, 1800, 'Urban apartment with rooftop access.'),
(20, 2, 2, 2100, 'Mid-century modern apartment with open floor plan.');
 
 
-- Inserting into Listing table
INSERT INTO Listing (Property_ID, Listing_Date, Listing_Status, Listing_Type) VALUES (1, '2024-03-17', 'Active', 'R');
INSERT INTO Listing (Property_ID, Listing_Date, Listing_Status, Listing_Type) VALUES (2, '2024-03-17', 'Active', 'S');
INSERT INTO Listing (Property_ID, Listing_Date, Listing_Status, Listing_Type)
VALUES
(3, '2024-02-17', 'Active', 'R'),
(4, '2024-04-19', 'Active', 'S'),
(5, '2024-06-15', 'Active', 'R'),
(6, '2024-01-17', 'Active', 'S'),
(7, '2024-03-27', 'Active', 'R'),
(8, '2024-05-17', 'Active', 'S'),
(9, '2024-02-17', 'Active', 'R'),
(10, '2024-08-17', 'Active', 'S'),
(11, '2024-07-17', 'Active', 'R'),
(12, '2024-03-17', 'Active', 'S'),
(13, '2023-03-27', 'Active', 'R'),
(14, '2023-05-17', 'Active', 'S'),
(15, '2023-02-17', 'Active', 'R'),
(16, '2023-08-17', 'Active', 'S'),
(17, '2023-07-17', 'Active', 'R'),
(18, '2023-03-17', 'Active', 'S'),
(19, '2023-05-17', 'Active', 'R'),
(20, '2023-10-17', 'Active', 'S');
 
-- Inserting into Amenity table
INSERT INTO Amenity (Listing_ID, Water, Gas, Electricity, Parking, Pets_Allowed) VALUES (1, 1, 1, 1, 1, 0);
INSERT INTO Amenity (Listing_ID, Water, Gas, Electricity, Parking, Pets_Allowed) VALUES (2, 1, 1, 1, 1, 1);
INSERT INTO Amenity (Listing_ID, Water, Gas, Electricity, Parking, Pets_Allowed)
VALUES
(3, 1, 0, 1, 1, 0),
(4, 1, 1, 0, 1, 1),
(5, 1, 1, 1, 1, 0),
(6, 0, 1, 1, 1, 1),
(7, 1, 0, 1, 0, 1),
(8, 0, 1, 1, 1, 0),
(9, 1, 1, 1, 1, 1),
(10, 1, 1, 1, 0, 0),
(11, 1, 0, 0, 1, 1),
(12, 0, 0, 1, 1, 0);
 
-- Inserting into Rent table
INSERT INTO Rent (Rent_ID, Move_In_Cost, Security_Deposit, Available_State_Date, Available_End_Date) VALUES (1, 1500, 2000, '2024-04-01', '2025-03-31');
INSERT INTO Rent (Rent_ID, Move_In_Cost, Security_Deposit, Available_State_Date, Available_End_Date)
VALUES
(3, 1800, 2500, '2024-03-01', '2025-02-28'),
(5, 1600, 2000, '2024-04-01', '2025-03-31'),
(7, 2000, 2800, '2024-05-01', '2025-04-30'),
(9, 1900, 2600, '2024-06-01', '2025-05-31'),
(11, 1700, 2200, '2024-07-01', '2025-06-30'),
(13, 2200, 3000, '2024-08-01', '2025-07-31'),
(15, 2000, 2700, '2024-09-01', '2025-08-31'),
(17, 2300, 3200, '2024-10-01', '2025-09-30'),
(19, 2300, 3200, '2023-10-01', '2025-09-30');
-- Inserting into Sell table
INSERT INTO Sell (Sell_ID, Asking_Price, Mortgage_Allowed) VALUES (2, 250000, 1);
INSERT INTO Sell (Sell_ID, Asking_Price, Mortgage_Allowed)
VALUES
(4, 280000, 1),
(6, 320000, 0),
(8, 300000, 1),
(10, 350000, 1),
(12, 270000, 0),
(14, 330000, 1),
(16, 290000, 1),
(18, 360000, 0),
(20, 180000, 0);
 
 
-- Inserting into Sell_Transaction table
INSERT INTO Sell_Transaction (Sell_ID, Customer_ID, Buying_Price, Transaction_Date, Transaction_Status) VALUES (2, 3, 260000, CURRENT_TIMESTAMP, 'Completed');
INSERT INTO Sell_Transaction (Sell_ID, Customer_ID, Buying_Price, Transaction_Date, Transaction_Status)
VALUES
(4, 5, 290000, '2024-04-15', 'Completed'),
(6, 7, 310000, '2024-05-20', 'Pending'),
(8, 9, 320000, '2024-06-25', 'Cancelled'),
(10, 11, 340000, '2024-07-30', 'Completed'),
(12, 13, 300000, '2024-08-05', 'Pending'),
(14, 15, 330000, '2024-09-10', 'Completed'),
(16, 17, 310000, '2024-10-15', 'Cancelled'),
(18, 19, 350000, '2024-11-20', 'Completed'),
(20, 21, 450000, '2024-11-20', 'Completed');
 
-- Inserting into Rent_Transaction table
INSERT INTO Rent_Transaction (Rent_ID, Customer_ID, Monthly_Rent, Transaction_Date, Transaction_Status) VALUES (1, 13, 1500, CURRENT_TIMESTAMP, 'Completed');
INSERT INTO Rent_Transaction (Rent_ID, Customer_ID, Monthly_Rent, Transaction_Date, Transaction_Status)
VALUES
(3, 33, 1550, CURRENT_TIMESTAMP, 'Completed'),
(5, 29, 1750, CURRENT_TIMESTAMP, 'Pending'),
(7, 1, 1650, CURRENT_TIMESTAMP, 'Completed'),
(9, 19, 1850, CURRENT_TIMESTAMP, 'Completed'),
(11, 21, 2000, CURRENT_TIMESTAMP, 'Cancelled'),
(13, 17, 2100, CURRENT_TIMESTAMP, 'Completed'),
(15, 9, 2250, CURRENT_TIMESTAMP, 'Pending'),
(17, 3, 2350, CURRENT_TIMESTAMP, 'Completed'),
(19, 11, 2350, CURRENT_TIMESTAMP, 'Completed');
 
 
 
-- Inserting into Rent_Legal_Document table
INSERT INTO Rent_Legal_Document (Rent_Transaction_ID, Agreement_Date, Lease_Start_Date, Lease_End_Date, Terms_And_Condition) VALUES (1, '2024-03-17', '2024-04-01', '2025-03-31', 'Standard lease terms and conditions apply.');
INSERT INTO Rent_Legal_Document (Rent_Transaction_ID, Agreement_Date, Lease_Start_Date, Lease_End_Date, Terms_And_Condition)
VALUES
(2, '2023-09-28', '2023-10-01', '2024-09-30', 'Tenant responsible for utilities.'),
(3, '2024-01-12', '2024-02-15', '2025-02-14', 'No pets allowed on premises.'),
(4, '2023-11-05', '2023-12-01', '2024-11-30', 'Landlord responsible for lawn maintenance.'),
(5, '2024-02-20', '2024-03-01', '2025-02-28', 'Tenant to provide proof of renter insurance.'),
(6, '2023-07-10', '2023-08-01', '2024-07-31', 'Rent due on the 1st of every month.'),
(7, '2024-05-15', '2024-06-01', '2025-05-31', 'Tenant to maintain HVAC filters.'),
(8, '2023-03-22', '2023-04-01', '2024-03-31', 'Landlord to provide appliance repairs.'),
(9, '2024-08-10', '2024-09-01', '2025-08-31', 'Tenant to notify landlord of any maintenance issues.'),
(10, '2023-02-20', '2024-03-01', '2025-02-28', 'Tenant to provide proof.');
 
 
 
-- Inserting into Sell_Legal_Document table
INSERT INTO Sell_Legal_Document (Sell_Transaction_ID, Agreement_Date, Sale_Deed, Mortgage_Approval, Terms_And_Condition) VALUES (1, '2024-03-17', 'Sale Deed Document', 'Mortgage Approval Document', 'Standard sale terms and conditions apply.');
INSERT INTO Sell_Legal_Document (Sell_Transaction_ID, Agreement_Date, Sale_Deed, Mortgage_Approval, Terms_And_Condition)
VALUES
(2, '2023-07-15', 'Property Sale Agreement', 'Mortgage Approval Letter', 'Agreed upon terms and conditions.'),
(3, '2021-05-20', 'Deed of Sale', 'Mortgage Approval Document', 'Standard sale terms and conditions apply.'),
(4, '2024-03-11', 'Sale Contract', 'Mortgage Approval Certificate', 'Terms and conditions as per agreement.'),
(5, '2022-04-05', 'Transfer Deed', 'Mortgage Approval Form', 'Agreed terms and conditions for sale.'),
(6, '2019-08-30', 'Property Conveyance Deed', 'Mortgage Approval Letter', 'Standard sale terms and conditions apply.'),
(7, '2018-11-25', 'Title Deed', 'Mortgage Approval Document', 'Terms and conditions as per contract.'),
(8, '2017-09-13', 'Property Sale Deed', 'Mortgage Approval Letter', 'Agreed upon terms and conditions.'),
(9, '2016-06-08', 'Sale Agreement', 'Mortgage Approval Certificate', 'Standard terms and conditions for sale.'),
(10, '2019-11-25', 'Title Deed', 'Mortgage Approval Document', 'Terms and conditions as per contract.');
 
 
-- Inserting into Review table
INSERT INTO Review (Lister_ID, Customer_ID, Property_ID, Rating, Comment) VALUES (2, 1, 1, 4.5, 'Great experience renting this property.'),
(4, 3, 2, 4.2, 'Enjoyed my stay, the location was convenient.'),
(6, 5, 3, 4.7, 'Beautiful apartment, exceeded expectations.'),
(8, 7, 4, 4.0, 'Comfortable and clean, would rent again.'),
(10, 9, 5, 4.5, 'Lovely property with great amenities.'),
(12, 11, 6, 4.8, 'Fantastic experience, highly recommend!'),
(14, 13, 7, 4.3, 'Nice apartment, friendly neighborhood.'),
(16, 15, 8, 4.6, 'Impressed with the stylish decor.'),
(18, 17, 9, 4.4, 'Very cozy apartment, felt like home.'),
(20, 19, 10, 4.1, 'Good value for the price, enjoyed my stay.'),
(22, 21, 11, 4.9, 'Absolutely loved this apartment, perfect for my needs.');


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
