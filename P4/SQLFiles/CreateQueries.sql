CREATE DATABASE ApartmentFinder;
GO

USE ApartmentFinder;
GO

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
