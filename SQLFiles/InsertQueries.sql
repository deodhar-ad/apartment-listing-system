Use ApartmentFinder;
Go

INSERT INTO [User] (First_Name, Last_Name, Phone_No, Email, Date_Of_Birth, User_Type) VALUES ('John', 'Doe', 1234567890, 'john.doe@example.com', '1990-01-01', 'C');
INSERT INTO [User] (First_Name, Last_Name, Phone_No, Email, Date_Of_Birth, User_Type) VALUES ('Jane', 'Smith', 9876543210, 'jane.smith@example.com', '1995-05-15', 'L');
INSERT INTO [User] (First_Name, Last_Name, Phone_No, Email, Date_Of_Birth, User_Type) VALUES ('Alice', 'Johnson', 5551234567, 'alice.johnson@example.com', '1980-08-20', 'C');
INSERT INTO [User] (First_Name, Last_Name, Phone_No, Email, Date_Of_Birth, User_Type) VALUES ('Michael', 'Brown', 9998887777, 'michael.brown@example.com', '1975-03-10', 'L');

INSERT INTO Lister (Lister_ID, Lister_Type, Active_Properties) VALUES (2, 'B', 5);
INSERT INTO Lister (Lister_ID, Lister_Type, Active_Properties) VALUES (4, 'O', 3);

INSERT INTO Customer (Customer_ID, Customer_Type, Budget_Min, Budget_Max, Preferred_Location) VALUES (1, 'Rent', 1000, 2000, 'Downtown');
INSERT INTO Customer (Customer_ID, Customer_Type, Budget_Min, Budget_Max, Preferred_Location) VALUES (3, 'Sell', 200000, 300000, 'Suburb');

INSERT INTO [Message] (Customer_ID, Lister_ID, Subject, Content) VALUES (1, 2, 'Regarding Property Inquiry', 'I am interested in renting the property listed by you.');
INSERT INTO [Message] (Customer_ID, Lister_ID, Subject, Content) VALUES (3, 4, 'Property Inquiry', 'I am interested in buying this property.');

INSERT INTO Property (Lister_ID, Address_Line_1, Address_Line_2, City, State, Country, Zipcode) VALUES (2, '123 Main St', '', 'New York', 'NY', 'USA', 10001);
INSERT INTO Property (Lister_ID, Address_Line_1, Address_Line_2, City, State, Country, Zipcode) VALUES (4, '456 Oak St', 'Apt 3B', 'Los Angeles', 'CA', 'USA', 90001);

INSERT INTO Property_Detail (Property_ID, Bedroom, Bathroom, Area_Size, Description) VALUES (1, 2, 1, 1000, 'Cozy apartment in the heart of the city.');
INSERT INTO Property_Detail (Property_ID, Bedroom, Bathroom, Area_Size, Description) VALUES (2, 3, 2, 1500, 'Spacious house with a backyard.');

INSERT INTO Listing (Property_ID, Listing_Date, Listing_Status, Listing_Type) VALUES (1, '2024-03-17', 'Active', 'R');
INSERT INTO Listing (Property_ID, Listing_Date, Listing_Status, Listing_Type) VALUES (2, '2024-03-17', 'Active', 'S');

INSERT INTO Amenity (Listing_ID, Water, Gas, Electricity, Parking, Pets_Allowed) VALUES (1, 1, 1, 1, 1, 0);
INSERT INTO Amenity (Listing_ID, Water, Gas, Electricity, Parking, Pets_Allowed) VALUES (2, 1, 1, 1, 1, 1);

INSERT INTO Rent (Rent_ID, Move_In_Cost, Security_Deposit, Available_State_Date, Available_End_Date) VALUES (1, 1500, 2000, '2024-04-01', '2025-03-31');

INSERT INTO Sell (Sell_ID, Asking_Price, Mortgage_Allowed) VALUES (2, 250000, 1);

INSERT INTO Sell_Transaction (Sell_ID, Customer_ID, Buying_Price, Transaction_Date, Transaction_Status) VALUES (2, 3, 260000, CURRENT_TIMESTAMP, 'Completed');

INSERT INTO Rent_Transaction (Rent_ID, Customer_ID, Monthly_Rent, Transaction_Date, Transaction_Status) VALUES (1, 1, 1500, CURRENT_TIMESTAMP, 'Completed');

INSERT INTO Rent_Legal_Document (Rent_Transaction_ID, Agreement_Date, Lease_Start_Date, Lease_End_Date, Terms_And_Condition) VALUES (1, '2024-03-17', '2024-04-01', '2025-03-31', 'Standard lease terms and conditions apply.');

INSERT INTO Sell_Legal_Document (Sell_Transaction_ID, Agreement_Date, Sale_Deed, Mortgage_Approval, Terms_And_Condition) VALUES (1, '2024-03-17', 'Sale Deed Document', 'Mortgage Approval Document', 'Standard sale terms and conditions apply.');

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