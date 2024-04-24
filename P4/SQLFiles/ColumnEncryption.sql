Use ApartmentFinder;

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

select * from DecryptedPhoneView where user_id in (1,2,3,4)
