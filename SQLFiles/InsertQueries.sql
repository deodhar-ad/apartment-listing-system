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

--new User inserts

INSERT INTO [User] (First_Name, Last_Name, Phone_No, Email, Date_Of_Birth, User_Type)
VALUES
('Gabriel', 'Parker', 1112223330, 'gabriel.parker@example.com', '1984-09-30', 'C'),
('Natalie', 'Gonzalez', 5556663330, 'natalie.gonzalez@example.com', '1997-12-12', 'L'),
('Henry', 'Martinez', 7778883330, 'henry.martinez@example.com', '1986-03-25', 'C'),
('Ella', 'Cooper', 2223339999, 'ella.cooper@example.com', '1990-07-08', 'L'),
('Jackson', 'Flores', 8889990001, 'jackson.flores@example.com', '1979-05-18', 'C'),
('Luna', 'Rivera', 3334441111, 'luna.rivera@example.com', '1983-10-21', 'L'),
('Logan', 'Sanchez', 6667775555, 'logan.sanchez@example.com', '1994-01-14', 'C'),
('Layla', 'Ward', 5556669999, 'layla.ward@example.com', '1977-04-04', 'L'),
('Elijah', 'Foster', 7778886666, 'elijah.foster@example.com', '1992-08-27', 'C'),
('Grace', 'Morales', 1112224444, 'grace.morales@example.com', '1985-11-09', 'L'),
('Lucas', 'Nguyen', 2223337777, 'lucas.nguyen@example.com', '1973-01-31', 'C'),
('Ava', 'Kim', 8889992222, 'ava.kim@example.com', '1998-06-22', 'L'),
('Aiden', 'Russell', 3334448888, 'aiden.russell@example.com', '1978-08-15', 'C'),
('Zoe', 'Chavez', 6667772222, 'zoe.chavez@example.com', '1993-02-28', 'L'),
('Mason', 'Perez', 5556666666, 'mason.perez@example.com', '1980-12-01', 'C'),
('Leah', 'Nguyen', 2223335555, 'leah.nguyen@example.com', '1974-07-26', 'L'),
('Oliver', 'Romero', 7778888888, 'oliver.romero@example.com', '1989-04-19', 'C'),
('Harper', 'Lee', 1112229999, 'harper.lee@example.com', '1987-10-12', 'L'),
('Evelyn', 'Gutierrez', 8889994444, 'evelyn.gutierrez@example.com', '1995-03-05', 'C'),
('Wyatt', 'Hernandez', 3334446666, 'wyatt.hernandez@example.com', '1976-02-18', 'L'),
('Aria', 'Garcia', 6667779999, 'aria.garcia@example.com', '1991-06-03', 'C'),
('Jack', 'Collins', 5556663333, 'jack.collins@example.com', '1984-08-26', 'L'),
('Sophie', 'Diaz', 2223338888, 'sophie.diaz@example.com', '1996-11-29', 'C'),
('Owen', 'Lopez', 7778886666, 'owen.lopez@example.com', '1981-07-17', 'L'),
('Eleanor', 'Reyes', 1112225555, 'eleanor.reyes@example.com', '1978-03-23', 'C'),
('Grayson', 'Ramirez', 8889991111, 'grayson.ramirez@example.com', '1994-10-16', 'L'),
('Maya', 'Evans', 3334447777, 'maya.evans@example.com', '1989-09-28', 'C'),
('Levi', 'Stewart', 6667772222, 'levi.stewart@example.com', '1997-12-11', 'L'),
('Scarlett', 'Flores', 5556664444, 'scarlett.flores@example.com', '1982-05-07', 'C'),
('Lincoln', 'Mitchell', 2223336666, 'lincoln.mitchell@example.com', '1971-08-20', 'L'),
('Victoria', 'Gomez', 7778882222, 'victoria.gomez@example.com', '1990-12-25', 'C'),
('Nolan', 'Moreno', 1112227777, 'nolan.moreno@example.com', '1983-09-14', 'L'),
('Stella', 'Sanchez', 8889993333, 'stella.sanchez@example.com', '1998-02-07', 'C'),
('Theodore', 'Chen', 3334442222, 'theodore.chen@example.com', '1975-04-28', 'L'),
('Piper', 'Rivera', 6667775555, 'piper.rivera@example.com', '1992-01-19', 'C'),
('Zachary', 'Nguyen', 5556668888, 'zachary.nguyen@example.com', '1987-11-02', 'L'),
('Hazel', 'Chang', 2223337777, 'hazel.chang@example.com', '1979-06-15', 'C'),
('Carter', 'Kim', 7778883333, 'carter.kim@example.com', '1994-03-18', 'L'),
('Madeline', 'Gutierrez', 1112226666, 'madeline.gutierrez@example.com', '1980-10-31', 'C'),
('Leo', 'Choi', 8889995555, 'leo.choi@example.com', '1996-05-24', 'L'),
('Nova', 'Martinez', 3334449999, 'nova.martinez@example.com', '1977-12-07', 'C'),
('Axel', 'Alvarez', 6667774444, 'axel.alvarez@example.com', '1993-07-20', 'L'),
('Clara', 'Gonzales', 5556661111, 'clara.gonzales@example.com', '1981-09-03', 'C'),
('Eli', 'Reyes', 2223339999, 'eli.reyes@example.com', '1995-12-26', 'L'),
('Willow', 'Luna', 7778885555, 'willow.luna@example.com', '1999-01-01', 'C'),
('Eva', 'Hernandez', 1112227777, 'eva.hernandez@example.com', '1988-04-20', 'L'),
('Damian', 'Diaz', 5556664444, 'damian.diaz@example.com', '1973-07-09', 'C'),
('Gabriella', 'Torres', 8889996666, 'gabriella.torres@example.com', '1997-10-10', 'L'),
('Colton', 'Reyes', 3334441111, 'colton.reyes@example.com', '1976-09-05', 'C'),
('Mila', 'Lopez', 6667778888, 'mila.lopez@example.com', '1991-03-28', 'L'),
('Brody', 'Garcia', 5556665555, 'brody.garcia@example.com', '1984-11-30', 'C'),
('Clara', 'Flores', 2223334444, 'clara.flores@example.com', '1995-02-15', 'L'),
('Micah', 'Nguyen', 7778887777, 'micah.nguyen@example.com', '1981-12-18', 'C'),
('Rylee', 'Chang', 1112223333, 'rylee.chang@example.com', '1977-05-11', 'L'),
('Emmett', 'Martinez', 8889992222, 'emmett.martinez@example.com', '1994-08-24', 'C'),
('Juliana', 'Choi', 3334445555, 'juliana.choi@example.com', '1989-10-03', 'L'),
('Parker', 'Gomez', 6667773333, 'parker.gomez@example.com', '1993-04-26', 'C'),
('Gemma', 'Kim', 5556669999, 'gemma.kim@example.com', '1986-06-19', 'L'),
('Bennett', 'Nguyen', 2223338888, 'bennett.nguyen@example.com', '1979-09-22', 'C'),
('Elise', 'Chang', 7778884444, 'elise.chang@example.com', '1995-01-13', 'L'),
('Ronan', 'Lopez', 1112224444, 'ronan.lopez@example.com', '1982-02-06', 'C'),
('Isla', 'Garcia', 8889997777, 'isla.garcia@example.com', '1996-07-29', 'L'),
('Caleb', 'Ramirez', 3334446666, 'caleb.ramirez@example.com', '1974-04-12', 'C'),
('Lyla', 'Martinez', 6667772222, 'lyla.martinez@example.com', '1990-11-05', 'L'),
('Silas', 'Nguyen', 5556667777, 'silas.nguyen@example.com', '1985-01-25', 'C'),
('Genevieve', 'Romero', 2223336666, 'genevieve.romero@example.com', '1972-04-08', 'L'),
('Weston', 'Gomez', 7778889999, 'weston.gomez@example.com', '1989-07-02', 'C'),
('Amara', 'Moreno', 1112227777, 'amara.moreno@example.com', '1983-08-15', 'L'),
('Eliana', 'Chavez', 8889995555, 'eliana.chavez@example.com', '1995-11-28', 'C'),
('Joel', 'Nguyen', 3334449999, 'joel.nguyen@example.com', '1978-10-21', 'L'),
('Daisy', 'Choi', 6667774444, 'daisy.choi@example.com', '1992-12-14', 'C'),
('Rhett', 'Gonzalez', 5556661111, 'rhett.gonzalez@example.com', '1987-02-07', 'L'),
('Lola', 'Alvarez', 2223339999, 'lola.alvarez@example.com', '1979-03-01', 'C'),
('Emerson', 'Garcia', 7778883333, 'emerson.garcia@example.com', '1994-06-24', 'L'),
('Kai', 'Martinez', 1112226666, 'kai.martinez@example.com', '1980-11-17', 'C'),
('Rory', 'Hernandez', 8889996666, 'rory.hernandez@example.com', '1996-04-10', 'L'),
('Nina', 'Nguyen', 3334441111, 'nina.nguyen@example.com', '1975-07-03', 'C'),
('Beckett', 'Gomez', 6667778888, 'beckett.gomez@example.com', '1991-12-26', 'L'),
('Aurora', 'Lopez', 5556664444, 'aurora.lopez@example.com', '1983-04-19', 'C'),
('Kaden', 'Chang', 2223337777, 'kaden.chang@example.com', '1995-07-12', 'L'),
('Daniela', 'Kim', 7778886666, 'daniela.kim@example.com', '1980-10-05', 'C'),
('Finn', 'Ramirez', 1112225555, 'finn.ramirez@example.com', '1985-12-28', 'L');




 
 
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

--New Inserts for Lister
INSERT INTO Lister (Lister_ID, Lister_Type, Active_Properties) 
VALUES 
(42, 'B', 3),
(44, 'O', 2),
(46, 'B', 0),
(48, 'O', 3),
(50, 'B', 4),
(52, 'O', 0),
(54, 'B', 3),
(56, 'O', 4),
(58, 'B', 2),
(60, 'O', 1),
(62, 'B', 4),
(64, 'O', 3),
(66, 'B', 1),
(68, 'O', 0),
(70, 'B', 3),
(72, 'O', 4),
(74, 'B', 2),
(76, 'O', 0),
(78, 'B', 3),
(80, 'O', 2),
(82, 'B', 3),
(84, 'O', 1),
(86, 'B', 4),
(88, 'O', 6),
(90, 'B', 0),
(92, 'O', 4),
(94, 'B', 6),
(96, 'O', 3),
(98, 'B', 4),
(100, 'O', 3),
(102, 'B', 4),
(104, 'O', 3),
(106, 'B', 1),
(108, 'O', 4),
(110, 'B', 0),
(112, 'O', 0),
(114, 'B', 2),
(116, 'O', 0),
(118, 'B', 3),
(120, 'O', 2);

 
 
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


--new 20 records with Customer_Type 'Rent'
INSERT INTO Customer (Customer_ID, Customer_Type, Budget_Min, Budget_Max, Preferred_Location)
VALUES
(37, 'Rent', 900, 1600, 'Los Angeles'),
(39, 'Rent', NULL, NULL, NULL),
(41, 'Rent', 1200, 2000, 'San Francisco'),
(43, 'Rent', 1500, 2200, 'Seattle'),
(45, 'Rent', NULL, NULL, NULL),
(47, 'Rent', 800, 1200, 'Chicago'),
(49, 'Rent', NULL, NULL, NULL),
(51, 'Rent', 1300, 1800, 'Atlanta'),
(53, 'Rent', 1000, 1500, 'Houston'),
(55, 'Rent', NULL, 2500, 'Philadelphia'),
(57, 'Rent', 1100, 1700, 'New York'),
(59, 'Rent', 1400, 2000, 'Los Angeles'),
(61, 'Rent', NULL, NULL, NULL),
(63, 'Rent', 900, 1300, 'Chicago'),
(65, 'Rent', 1600, 2200, 'San Francisco'),
(67, 'Rent', 1200, 1800, 'Boston'),
(69, 'Rent', NULL, NULL, NULL),
(71, 'Rent', 1000, 1600, 'Miami'),
(73, 'Rent', 1300, 1900, 'Seattle'),
(75, 'Rent', NULL, NULL, NULL),
(77, 'Rent', 1100, 1700, 'New York');

-- 20 more records with Customer_Type 'Sell'
INSERT INTO Customer (Customer_ID, Customer_Type, Budget_Min, Budget_Max, Preferred_Location)
VALUES
(79, 'Sell', 180000, 250000, 'New York'),
(81, 'Sell', 250000, 350000, 'Los Angeles'),
(83, 'Sell', NULL, NULL, NULL),
(85, 'Sell', 150000, 220000, 'Chicago'),
(87, 'Sell', 200000, 280000, 'San Francisco'),
(89, 'Sell', 300000, 400000, 'Boston'),
(91, 'Sell', NULL, NULL, NULL),
(93, 'Sell', 220000, 300000, 'Miami'),
(95, 'Sell', 280000, 350000, 'Seattle'),
(97, 'Sell', NULL, NULL, NULL),
(99, 'Sell', 200000, 300000, 'Los Angeles'),
(101, 'Sell', 150000, 220000, 'Chicago'),
(103, 'Sell', 250000, 350000, 'Seattle'),
(105, 'Sell', NULL, NULL, NULL),
(107, 'Sell', 180000, 250000, 'New York'),
(109, 'Sell', 200000, 280000, 'San Francisco'),
(111, 'Sell', 300000, 400000, 'Boston'),
(113, 'Sell', NULL, NULL, NULL),
(115, 'Sell', 220000, 300000, 'Miami'),
(117, 'Sell', 280000, 350000, 'Seattle');



 
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


--new inserts for message

-- Rent Inquiries
INSERT INTO [Message] (Customer_ID, Lister_ID, Subject, Content)
VALUES
(25, 32, 'Rental property availability', 'Is the rental property still available for lease?'),
(27, 32, 'Interest in renting property', 'I am interested in renting the property you have listed.'),
(29, 38, 'Inquiry about rental terms', 'Could you please provide details about the rental terms?'),
(31, 38, 'Property viewing request', 'Can I schedule a viewing for the rental property?'),
(33, 42, 'Questions about rental property', 'I have some questions regarding the rental property.'),
(35, 44, 'Interested in renting property', 'I would like to know more about the rental property you have listed.'),
(37, 48, 'Rental property inquiry', 'Is the rental property pet-friendly?'),
(39, 48, 'Rental property viewing', 'Can I arrange a viewing for the rental property?'),
(41, 52, 'Inquiry about rental terms', 'What are the lease terms for the rental property?'),
(43, 52, 'Property availability query', 'Is the rental property still available for rent?'),

-- Sell Inquiries
(45, 58, 'Offer for property purchase', 'I am interested in making an offer to purchase your property.'),
(47, 58, 'Buying property inquiry', 'Could you provide more information about the property you are selling?'),
(49, 62, 'Property price negotiation', 'Are you open to negotiating the selling price for the property?'),
(51, 62, 'Selling property details', 'Can you please share more details about the property listed for sale?'),
(53, 66, 'Interest in purchasing property', 'I am interested in buying the property you have listed for sale.'),
(55, 66, 'Property amenities inquiry', 'What amenities are included with the property you are selling?'),
(57, 70, 'Property viewing request', 'Can I schedule a viewing for the property you have listed for sale?'),
(59, 70, 'Offer for buying property', 'I would like to make an offer to purchase the property.'),
(61, 74, 'Buying property location', 'Is the property located in a good school district?'),
(63, 74, 'Inquiry about property details', 'Could you provide more information about the property for sale?');



 
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

-- new insertions for property table
INSERT INTO Property (Lister_ID, Address_Line_1, Address_Line_2, City, State, Country, Zipcode) VALUES 
(42, '2122 Broadway', 'Apt 301', 'New York', 'NY', 'USA', 10001),
(44, '2223 Pine St', 'Unit 10A', 'Los Angeles', 'CA', 'USA', 90001),
(46, '2324 Oak St', 'Apt 201', 'San Francisco', 'CA', 'USA', 94103),
(48, '2425 Elm St', 'Suite 4B', 'Chicago', 'IL', 'USA', 60611),
(50, '2526 Maple Ave', 'Unit 3C', 'Miami', 'FL', 'USA', 33101),
(52, '2627 Birch St', 'Apt 2002', 'Seattle', 'WA', 'USA', 98101),
(54, '2728 Cedar St', 'Unit 8F', 'Boston', 'MA', 'USA', 02108),
(56, '2829 Walnut St', 'Apt 601', 'Houston', 'TX', 'USA', 77002),
(58, '2930 Pine St', 'Suite 12G', 'San Diego', 'CA', 'USA', 92101),
(60, '3031 Maple St', 'Apt 902', 'Philadelphia', 'PA', 'USA', 19103),
(62, '3132 Elm St', 'Unit 5D', 'Portland', 'OR', 'USA', 97205),
(64, '3233 Oak St', 'Apt 6B', 'Dallas', 'TX', 'USA', 75201),
(66, '3334 Birch St', 'Unit 25F', 'Phoenix', 'AZ', 'USA', 85001),
(68, '3435 Pine St', 'Apt 802', 'Denver', 'CO', 'USA', 80202),
(70, '3536 Maple St', 'Suite 501', 'Las Vegas', 'NV', 'USA', 89101),
(72, '3637 Elm St', 'Apt 502', 'New Orleans', 'LA', 'USA', 70112),
(74, '3738 Oak St', 'Unit 15D', 'Austin', 'TX', 'USA', 78701),
(76, '3839 Cedar St', 'Apt 10C', 'Nashville', 'TN', 'USA', 37201),
(78, '3940 Walnut St', 'Suite 601', 'Orlando', 'FL', 'USA', 32801),
(80, '4041 Pine St', 'Apt 902', 'Washington', 'DC', 'USA', 20001);
 
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

--new insertions into the Property Details table
INSERT INTO Property_Detail (Property_ID, Bedroom, Bathroom, Area_Size, Description)
VALUES
(22, 3, 2, 1500, 'Luxurious house with a spacious backyard.'),
(23, 2, 1, 1000, 'Cozy loft with skyline views.'),
(24, 4, 3, 2200, 'Contemporary apartment with scenic balcony.'),
(25, 3, 2, 1800, 'Renovated condo with a cozy fireplace.'),
(26, 2, 1, 1200, 'Urban apartment with modern amenities.'),
(27, 5, 4, 3000, 'Elegant penthouse with panoramic city views.'),
(28, 3, 2, 1600, 'Chic apartment in a lively neighborhood.'),
(29, 2, 2, 1400, 'Sleek loft with industrial touches.'),
(30, 4, 3, 2400, 'Spacious condo with stunning city vistas.'),
(31, 3, 2, 1700, 'Coastal retreat with oceanfront balcony.'),
(32, 2, 1, 1100, 'Quaint apartment with a cozy atmosphere.'),
(33, 4, 3, 2200, 'Modern condo with expansive city views.'),
(34, 3, 2, 1600, 'Mountain chalet with rustic charm.'),
(35, 2, 1, 1300, 'Rustic cabin with serene mountain views.'),
(36, 5, 4, 3200, 'Luxury penthouse with panoramic skyline views.'),
(37, 3, 2, 1900, 'Chic urban loft with rooftop access.'),
(38, 2, 2, 1500, 'Modern condo with open floor plan.'),
(39, 3, 2, 1800, 'Luxurious penthouse with city skyline views.'),
(40, 2, 2, 2100, 'Spacious condo with modern amenities.');
 
 
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

-- new insertions into the Listing table
INSERT INTO Listing (Property_ID, Listing_Date, Listing_Status, Listing_Type) VALUES 
(22, '2024-09-17', 'Inactive', 'S'),
(23, '2024-08-17', 'Active', 'R'),
(24, '2024-11-19', 'Inactive', 'S'),
(25, '2024-12-15', 'Active', 'R'),
(26, '2024-07-17', 'Inactive', 'S'),
(27, '2024-08-27', 'Active', 'R'),
(28, '2024-09-17', 'Inactive', 'S'),
(29, '2024-10-17', 'Active', 'R'),
(30, '2024-12-17', 'Inactive', 'S'),
(31, '2024-07-17', 'Active', 'R'),
(32, '2024-10-17', 'Inactive', 'S'),
(33, '2023-06-27', 'Active', 'R'),
(34, '2023-08-17', 'Inactive', 'S'),
(35, '2023-04-17', 'Active', 'R'),
(36, '2023-10-17', 'Inactive', 'S'),
(37, '2023-07-17', 'Active', 'R'),
(38, '2023-08-17', 'Inactive', 'S'),
(39, '2023-09-17', 'Active', 'R'),
(40, '2023-10-17', 'Inactive', 'S');

 
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
