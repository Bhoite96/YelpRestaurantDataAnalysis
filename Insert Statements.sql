use INFO_6210_DB;

/*alter table dbo.[User] nocheck constraint all;
alter table dbo.[Date_Dimension] nocheck constraint all;
alter table dbo.[Tip] nocheck constraint all;
alter table dbo.[CheckIn] nocheck constraint all;*/
 


/* ------------------------------ Business ------------------------------------*/
INSERT INTO dbo.Business (ID,Name,Ratings,IsOpen,ReviewCount) values ('f9NumwFMBDn751xgFiRbNA','The Range At Lake Norman',3.5,1,36);
INSERT INTO dbo.Business (ID,Name,Ratings,IsOpen,ReviewCount) values ('Yzvjg0SayhoZgCljUJRF9Q','Carlos Santo, NMD',5.0,1,4)
INSERT INTO dbo.Business (ID,Name,Ratings,IsOpen,ReviewCount) values ('6OAZjbxqM5ol29BuHsil3w','Nevada House of Hose',5.0,1,4)
INSERT INTO dbo.Business (ID,Name,Ratings,IsOpen,ReviewCount) values ('XNoUzKckATkOD1hP6vghZg','Felinus',5.0,1,5)
INSERT INTO dbo.Business (ID,Name,Ratings,IsOpen,ReviewCount) values ('51M2Kk903DFYI6gnB5I6SQ','USE MY GUY SERVICES LLC',4.5,1,26)

INSERT INTO dbo.Business (ID,Name,Ratings,IsOpen,ReviewCount) values ('cKyLV5oWZJ2NudWgqs8VZw','Oasis Auto Center - Gilbert',4.5,1,38)
INSERT INTO dbo.Business (ID,Name,Ratings,IsOpen,ReviewCount) values ('oiAlXZPIFm2nBCt0DHLu_Q','Green World Cleaners',3.5,1,81)
INSERT INTO dbo.Business (ID,Name,Ratings,IsOpen,ReviewCount) values ('ScYkbYNkDgCneBrD9vqhCQ','Junction Tire & Auto Service',5,1,18)
INSERT INTO dbo.Business (ID,Name,Ratings,IsOpen,ReviewCount) values ('pQeaRpvuhoEqudo3uymHIQ','The Empanadas House',4.5,1,5)
INSERT INTO dbo.Business (ID,Name,Ratings,IsOpen,ReviewCount) values ('EosRKXIGeSWFYWwpkbhNnA','Xtreme Couture',3,1,16)

INSERT INTO dbo.Business (ID,Name,Ratings,IsOpen,ReviewCount) values ('M_guz7Dj7hX0evS672wIwA','Chocolate Shoppe Ice Cream',3.5,1,6)
INSERT INTO dbo.Business (ID,Name,Ratings,IsOpen,ReviewCount) values ('kOICO53wbOiOJcKuCgOQ3A','Tan Las Vegas',3.5,0,5)
INSERT INTO dbo.Business (ID,Name,Ratings,IsOpen,ReviewCount) values ('uZuh51lXu7tsrC8RAwkg1A','Manolo Blahnik',4.5,0,32)
INSERT INTO dbo.Business (ID,Name,Ratings,IsOpen,ReviewCount) values ('Vwo64kNYDjKi98gUUv4-iQ','Gateway Fit Body Boot Camp',4.5,1,16)
INSERT INTO dbo.Business (ID,Name,Ratings,IsOpen,ReviewCount) values ('CsLQLiRoafpJPJSkNX2h5Q','Middle East Deli',3,0,5)
INSERT INTO dbo.Business (ID,Name,Ratings,IsOpen,ReviewCount) values ('x3Po6tJGb729u_HJPY6UCA','Glendale Glitters',2.5,1,52)

--Select * from dbo.Business


/* -------------------------------Attributes ----------------------------------*/

INSERT INTO dbo.Attribute(ID,Name) values ('AID00001','BusinessAcceptsCreditCards');
INSERT INTO dbo.Attribute(ID,Name) values ('AID00002','BikeParking');
INSERT INTO dbo.Attribute(ID,Name) values ('AID00003','GoodForKids');
INSERT INTO dbo.Attribute(ID,Name) values ('AID00004','ByAppointmentOnly');
INSERT INTO dbo.Attribute(ID,Name) values ('AID00005','RestaurantsPriceRange2');
INSERT INTO dbo.Attribute(ID,Name) values ('AID00006','DogsAllowed');
INSERT INTO dbo.Attribute(ID,Name) values ('AID00007','RestaurantsAttire');
INSERT INTO dbo.Attribute(ID,Name) values ('AID00008','RestaurantsTakeOut');
INSERT INTO dbo.Attribute(ID,Name) values ('AID00009','NoiseLevel');
INSERT INTO dbo.Attribute(ID,Name) values ('AID00010','RestaurantsReservations');
INSERT INTO dbo.Attribute(ID,Name) values ('AID00011','RestaurantsGoodForGroups');
INSERT INTO dbo.Attribute(ID,Name) values ('AID00012','HasTV');
INSERT INTO dbo.Attribute(ID,Name) values ('AID00013','Alcohol');
INSERT INTO dbo.Attribute(ID,Name) values ('AID00014','RestaurantsDelivery');
INSERT INTO dbo.Attribute(ID,Name) values ('AID00015','OutdoorSeating');

/*
UPDATE dbo.Attribute SET ID  = 'AID00010' WHERE ID = 'AID000010';
UPDATE dbo.Attribute SET ID  = 'AID00011' WHERE ID = 'AID000011';
UPDATE dbo.Attribute SET ID  = 'AID00012' WHERE ID = 'AID000012';
UPDATE dbo.Attribute SET ID  = 'AID00013' WHERE ID = 'AID000013';
UPDATE dbo.Attribute SET ID  = 'AID00014' WHERE ID = 'AID000014';
UPDATE dbo.Attribute SET ID  = 'AID00015' WHERE ID = 'AID000015';
*/

--Select * from dbo.Attribute


/*------------------------------Business_Attributes-------------------------------*/

INSERT INTO dbo.Business_Attributes(Business_ID,AttributeID,Value) values ('f9NumwFMBDn751xgFiRbNA','AID00001','True');
INSERT INTO dbo.Business_Attributes(Business_ID,AttributeID,Value) values ('f9NumwFMBDn751xgFiRbNA','AID00002','True');
INSERT INTO dbo.Business_Attributes(Business_ID,AttributeID,Value) values ('f9NumwFMBDn751xgFiRbNA','AID00003','False');
INSERT INTO dbo.Business_Attributes(Business_ID,AttributeID,Value) values ('f9NumwFMBDn751xgFiRbNA','AID00004','False');
INSERT INTO dbo.Business_Attributes(Business_ID,AttributeID,Value) values ('f9NumwFMBDn751xgFiRbNA','AID00005','3');


INSERT INTO dbo.Business_Attributes(Business_ID,AttributeID,Value) values ('Yzvjg0SayhoZgCljUJRF9Q','AID00003','True');
INSERT INTO dbo.Business_Attributes(Business_ID,AttributeID,Value) values ('Yzvjg0SayhoZgCljUJRF9Q','AID00004','True');

INSERT INTO dbo.Business_Attributes(Business_ID,AttributeID,Value) values ('6OAZjbxqM5ol29BuHsil3w','AID00001','True');
INSERT INTO dbo.Business_Attributes(Business_ID,AttributeID,Value) values ('6OAZjbxqM5ol29BuHsil3w','AID00004','False');
INSERT INTO dbo.Business_Attributes(Business_ID,AttributeID,Value) values ('6OAZjbxqM5ol29BuHsil3w','AID00006','True');
INSERT INTO dbo.Business_Attributes(Business_ID,AttributeID,Value) values ('6OAZjbxqM5ol29BuHsil3w','AID00002','True');
INSERT INTO dbo.Business_Attributes(Business_ID,AttributeID,Value) values ('6OAZjbxqM5ol29BuHsil3w','AID00005','4');

--Select * from dbo.Business_Attributes

/*----------------------------------------Business Address---------------------------------------------*/

INSERT INTO dbo.Business_Address(BusinessID, City, State, PostalCode, Latitude, Longitude, AddressID, Address) VALUES
('f9NumwFMBDn751xgFiRbNA','Cornelius','NC','28031',35.4627242,-80.8526119,'ADD10000','10913 Bailey Rd')

INSERT INTO dbo.Business_Address(BusinessID, City, State, PostalCode, Latitude, Longitude, AddressID, Address) VALUES
('Yzvjg0SayhoZgCljUJRF9Q','Scottsdale','AZ','85258',33.5694041,-111.8902637,'ADD10001','8880 E Via Linda, Ste 107')

INSERT INTO dbo.Business_Address(BusinessID, City, State, PostalCode, Latitude, Longitude, AddressID, Address) VALUES
('XNoUzKckATkOD1hP6vghZg','Montreal','QC','H4C 1P4',45.479984,-73.58007,'ADD10002','3554 Rue Notre-Dame O')

INSERT INTO dbo.Business_Address(BusinessID, City, State, PostalCode, Latitude, Longitude, AddressID, Address) VALUES
('6OAZjbxqM5ol29BuHsil3w','North Las Vegas','NV','89030',36.2197281,-115.1277255,'ADD10003','1015 Sharp Cir')

INSERT INTO dbo.Business_Address(BusinessID, City, State, PostalCode, Latitude, Longitude, AddressID, Address) VALUES
('51M2Kk903DFYI6gnB5I6SQ','Mesa','AZ','85205',33.4280652,-111.7266485,'ADD10004','4827 E Downing Cir')

INSERT INTO dbo.Business_Address(BusinessID, City, State, PostalCode, Latitude, Longitude, AddressID, Address) VALUES
('cKyLV5oWZJ2NudWgqs8VZw','Gilbert','AZ','85233',33.3503993,-111.8271417,'ADD10005','1720 W Elliot Rd, Ste 105')

INSERT INTO dbo.Business_Address(BusinessID, City, State, PostalCode, Latitude, Longitude, AddressID, Address) VALUES
('oiAlXZPIFm2nBCt0DHLu_Q','Las Vegas','NV','89118',36.0639767,-115.241463,'ADD10006','6870 S Rainbow Blvd, Ste 117')

INSERT INTO dbo.Business_Address(BusinessID, City, State, PostalCode, Latitude, Longitude, AddressID, Address) VALUES
('ScYkbYNkDgCneBrD9vqhCQ','Mesa','AZ','85209',33.3938847,-111.6822257,'ADD10007','6910 E Southern Ave')

INSERT INTO dbo.Business_Address(BusinessID, City, State, PostalCode, Latitude, Longitude, AddressID, Address) VALUES
('pQeaRpvuhoEqudo3uymHIQ','Champaign','IL','61820',40.1104457,-88.2330726,'ADD10008','404 E Green St')

INSERT INTO dbo.Business_Address(BusinessID, City, State, PostalCode, Latitude, Longitude, AddressID, Address) VALUES
('EosRKXIGeSWFYWwpkbhNnA','Toronto','ON','M8Z 5G3',43.6245394916,-79.5291079302,'ADD10009','700 Kipling Avenue Etobicoke')



--SELECT * FROM dbo.Business_Address

/*----------------------------------------Category---------------------------------------------*/

INSERT INTO dbo.Category(ID,Category) values ('CAT110001','Active Life');
INSERT INTO dbo.Category(ID,Category) values ('CAT110002','Gun/Rifle Ranges');
INSERT INTO dbo.Category(ID,Category) values ('CAT110003','Guns & Ammo');
INSERT INTO dbo.Category(ID,Category) values ('CAT110004','Shopping');
INSERT INTO dbo.Category(ID,Category) values ('CAT110005','Health & Medical');
INSERT INTO dbo.Category(ID,Category) values ('CAT110006','Fitness & Instruction');
INSERT INTO dbo.Category(ID,Category) values ('CAT110007','Yoga');
INSERT INTO dbo.Category(ID,Category) values ('CAT110008','Pilates');
INSERT INTO dbo.Category(ID,Category) values ('CAT110009','Pets');
INSERT INTO dbo.Category(ID,Category) values ('CAT110010','Pet Services');
INSERT INTO dbo.Category(ID,Category) values ('CAT110011','Pet Groomers');

--Select * from dbo.Category

/*-------------------------------------Business Category-------------------------------------*/

INSERT INTO dbo.Business_Category(BusinessID,CategoryID) values ('f9NumwFMBDn751xgFiRbNA','CAT110001'); 
INSERT INTO dbo.Business_Category(BusinessID,CategoryID) values ('f9NumwFMBDn751xgFiRbNA','CAT110002'); 
INSERT INTO dbo.Business_Category(BusinessID,CategoryID) values ('f9NumwFMBDn751xgFiRbNA','CAT110003'); 
INSERT INTO dbo.Business_Category(BusinessID,CategoryID) values ('f9NumwFMBDn751xgFiRbNA','CAT110004'); 

INSERT INTO dbo.Business_Category(BusinessID,CategoryID) values ('Yzvjg0SayhoZgCljUJRF9Q','CAT110005'); 
INSERT INTO dbo.Business_Category(BusinessID,CategoryID) values ('Yzvjg0SayhoZgCljUJRF9Q','CAT110006'); 
INSERT INTO dbo.Business_Category(BusinessID,CategoryID) values ('Yzvjg0SayhoZgCljUJRF9Q','CAT110007'); 
INSERT INTO dbo.Business_Category(BusinessID,CategoryID) values ('Yzvjg0SayhoZgCljUJRF9Q','CAT110001'); 
INSERT INTO dbo.Business_Category(BusinessID,CategoryID) values ('Yzvjg0SayhoZgCljUJRF9Q','CAT110008');

INSERT INTO dbo.Business_Category(BusinessID,CategoryID) values ('XNoUzKckATkOD1hP6vghZg','CAT110009');
INSERT INTO dbo.Business_Category(BusinessID,CategoryID) values ('XNoUzKckATkOD1hP6vghZg','CAT110010');
INSERT INTO dbo.Business_Category(BusinessID,CategoryID) values ('XNoUzKckATkOD1hP6vghZg','CAT110011');

--Select * from dbo.Business_Category


/*---------------------------------------------WeekDay_Dimension---------------------------------------------------*/

INSERT INTO dbo.WeekDay_Dimension (WeekDay_ID,WeekDay_Name) values ('101','Sunday');
INSERT INTO dbo.WeekDay_Dimension (WeekDay_ID,WeekDay_Name) values ('102','Monday');
INSERT INTO dbo.WeekDay_Dimension (WeekDay_ID,WeekDay_Name) values ('103','Tuesday');
INSERT INTO dbo.WeekDay_Dimension (WeekDay_ID,WeekDay_Name) values ('104','Wednesday');
INSERT INTO dbo.WeekDay_Dimension (WeekDay_ID,WeekDay_Name) values ('105','Thursday');
INSERT INTO dbo.WeekDay_Dimension (WeekDay_ID,WeekDay_Name) values ('106','Friday');
INSERT INTO dbo.WeekDay_Dimension (WeekDay_ID,WeekDay_Name) values ('107','Saturday');



-- Select * from dbo.WeekDay_Dimension

/*----------------------------------------------Parking Attribute---------------------------------------------------*/


INSERT INTO dbo.Parking_Attributes(Garage, Street, Validated, Lot, Valet, BusinessID) VALUES (0,0,0,1,0,'f9NumwFMBDn751xgFiRbNA')
INSERT INTO dbo.Parking_Attributes(Garage, Street, Validated, Lot, Valet, BusinessID) VALUES (0,0,0,1,0,'6OAZjbxqM5ol29BuHsil3w')
INSERT INTO dbo.Parking_Attributes(Garage, Street, Validated, Lot, Valet, BusinessID) VALUES (0,0,0,1,0,'oiAlXZPIFm2nBCt0DHLu_Q')
INSERT INTO dbo.Parking_Attributes(Garage, Street, Validated, Lot, Valet, BusinessID) VALUES (0,0,0,0,0,'EosRKXIGeSWFYWwpkbhNnA')
INSERT INTO dbo.Parking_Attributes(Garage, Street, Validated, Lot, Valet, BusinessID) VALUES (0,1,0,1,0,'M_guz7Dj7hX0evS672wIwA')
INSERT INTO dbo.Parking_Attributes(Garage, Street, Validated, Lot, Valet, BusinessID) VALUES (0,0,0,0,0,'kOICO53wbOiOJcKuCgOQ3A')
INSERT INTO dbo.Parking_Attributes(Garage, Street, Validated, Lot, Valet, BusinessID) VALUES (1,0,0,0,0,'uZuh51lXu7tsrC8RAwkg1A')
INSERT INTO dbo.Parking_Attributes(Garage, Street, Validated, Lot, Valet, BusinessID) VALUES (0,0,0,1,0,'Vwo64kNYDjKi98gUUv4-iQ')
INSERT INTO dbo.Parking_Attributes(Garage, Street, Validated, Lot, Valet, BusinessID) VALUES (0,0,0,0,0,'CsLQLiRoafpJPJSkNX2h5Q')
INSERT INTO dbo.Parking_Attributes(Garage, Street, Validated, Lot, Valet, BusinessID) VALUES (0,0,0,0,0,'x3Po6tJGb729u_HJPY6UCA')

SELECT * FROM dbo.Parking_Attributes

/*-------------------------------------------Business Hours-------------------------------------------------*/

INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('f9NumwFMBDn751xgFiRbNA',100000,180000,'102')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('f9NumwFMBDn751xgFiRbNA',110000,200000,'103')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('f9NumwFMBDn751xgFiRbNA',100000,180000,'104')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('f9NumwFMBDn751xgFiRbNA',110000,200000,'105')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('f9NumwFMBDn751xgFiRbNA',110000,200000,'106')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('f9NumwFMBDn751xgFiRbNA',110000,200000,'107')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('f9NumwFMBDn751xgFiRbNA',130000,180000,'101')

--Update dbo.BusinessHours SET WeekDay_ID = '101' WHERE OpeningHours = 130000
SELECT * FROM dbo.BusinessHours
Select * from dbo.WeekDay_Dimension

INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('6OAZjbxqM5ol29BuHsil3w',70000,160000,'102')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('6OAZjbxqM5ol29BuHsil3w',70000,160000,'103')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('6OAZjbxqM5ol29BuHsil3w',70000,160000,'104')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('6OAZjbxqM5ol29BuHsil3w',70000,160000,'105')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('6OAZjbxqM5ol29BuHsil3w',70000,160000,'106')


INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('51M2Kk903DFYI6gnB5I6SQ',90000,160000,'103')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('51M2Kk903DFYI6gnB5I6SQ',90000,160000,'104')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('51M2Kk903DFYI6gnB5I6SQ',90000,160000,'105')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('51M2Kk903DFYI6gnB5I6SQ',90000,160000,'106')

INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('cKyLV5oWZJ2NudWgqs8VZw',70000,180000,'102')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('cKyLV5oWZJ2NudWgqs8VZw',70000,180000,'103')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('cKyLV5oWZJ2NudWgqs8VZw',70000,180000,'104')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('cKyLV5oWZJ2NudWgqs8VZw',70000,180000,'105')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('cKyLV5oWZJ2NudWgqs8VZw',70000,180000,'106')
INSERT INTO dbo.BusinessHours(BusinessID,OpeningHours,ClosingHours,WeekDay_ID) VALUES('cKyLV5oWZJ2NudWgqs8VZw',70000,150000,'107')




/*---------------------------------------------------- USER ----------------------------------------------------*/
INSERT INTO [dbo].[User](UserID, FirstName,MiddleName,LastName,ReviewCount,Useful,Cool,AverageStars,Funny,YelpingSince ) VALUES
('pHQcEJbsYThyl_861tc8ug','Janice','','',53,532,280,2.52,'376',20111101)

INSERT INTO [dbo].[User](UserID, FirstName,MiddleName,LastName,ReviewCount,Useful,Cool,AverageStars,Funny,YelpingSince ) VALUES
('3KK7L2Q6NMfJA1Ky4Ntmdg','Ivy','','',1326,10385,6626,3.38,'5629',20110416)

INSERT INTO [dbo].[User](UserID, FirstName,MiddleName,LastName,ReviewCount,Useful,Cool,AverageStars,Funny,YelpingSince ) VALUES
('W7DHyQlY_kXls2iXt-_2Ag','Maggie','','Wills',2830,89792,83915,3.09,'78184',20081130)

INSERT INTO [dbo].[User](UserID, FirstName,MiddleName,LastName,ReviewCount,Useful,Cool,AverageStars,Funny,YelpingSince ) VALUES
('jJlYRJXPdIolKbuqGiZ-CQ','Valarie','','Paul',250,561,377,3.94,'163',20060504)

INSERT INTO [dbo].[User](UserID, FirstName,MiddleName,LastName,ReviewCount,Useful,Cool,AverageStars,Funny,YelpingSince ) VALUES
('ro8lGoWMsa49B3tWLaWwSA','Antonio','Daniel','',35,67,28,4.29,'13',20120216)

INSERT INTO [dbo].[User](UserID, FirstName,MiddleName,LastName,ReviewCount,Useful,Cool,AverageStars,Funny,YelpingSince ) VALUES
('x8e1Cc1lh835Q1CpHAD0RQ','Evan','John','Smith',170,188,84,4.2,'41',20140525)

INSERT INTO [dbo].[User](UserID, FirstName,MiddleName,LastName,ReviewCount,Useful,Cool,AverageStars,Funny,YelpingSince ) VALUES
('zD1T8JFx3O1Rf9aNu49rpQ','Poker','Mae','Miller',384,1069,311, 3.53,'316',20060814)


INSERT INTO [dbo].[User](UserID, FirstName,MiddleName,LastName,ReviewCount,Useful,Cool,AverageStars,Funny,YelpingSince ) VALUES
('skjkxo7Ewz3cbxW4TQNK5g','Nicole','S','Rynee',466,1613,1392,4.16,'1126',20070110)

INSERT INTO [dbo].[User](UserID, FirstName,MiddleName,LastName,ReviewCount,Useful,Cool,AverageStars,Funny,YelpingSince ) VALUES
('703E1kuAN7we3Eubx7BUEw','Vicki','','Brown',800,1721,955,4.51,'594',20080218)

INSERT INTO [dbo].[User](UserID, FirstName,MiddleName,LastName,ReviewCount,Useful,Cool,AverageStars,Funny,YelpingSince ) VALUES
('DiJpFejfyeULrFQ2PGP5kg','Stacia','','Johnson',104,325,85,3.79,'71',20121116)
---------------------------------------------------------------------------------------------------------------------------------

INSERT INTO [dbo].[User](UserID, FirstName,MiddleName,LastName,ReviewCount,Useful,Cool,AverageStars,Funny,YelpingSince ) VALUES
('QoGAyJ-4J2y9XOq1b5LFaA','Robin','','Johnson',24,12,2,3.92,'2',20130807)

INSERT INTO [dbo].[User](UserID, FirstName,MiddleName,LastName,ReviewCount,Useful,Cool,AverageStars,Funny,YelpingSince ) VALUES
('46HhzhpBfTdTSB5ceTx_Og','Rob','','Castinetti',363,749,189,3.78,'120',20100629)

INSERT INTO [dbo].[User](UserID, FirstName,MiddleName,LastName,ReviewCount,Useful,Cool,AverageStars,Funny,YelpingSince ) VALUES
('nI2gZyZReOun6PSPlq7iSw','Christina','','Johns',12,10,2,4.67,'0',20121116)

INSERT INTO [dbo].[User](UserID, FirstName,MiddleName,LastName,ReviewCount,Useful,Cool,AverageStars,Funny,YelpingSince ) VALUES
('zgV0ZroIF956gw4cul8MHA','Elizabeth','','Thomas',617,3923,2836,3.9,'2687',20121116)

--update [dbo].[User] SET YelpingSince = 20100406 where UserID = 'zgV0ZroIF956gw4cul8MHA'

INSERT INTO [dbo].[User](UserID, FirstName,MiddleName,LastName,ReviewCount,Useful,Cool,AverageStars,Funny,YelpingSince ) VALUES
('WeVkkF5L39888IPPlRhNpg','Kris','','Jarvis',1356,10710,6539,3.97,'5477',20120418)

INSERT INTO [dbo].[User](UserID, FirstName,MiddleName,LastName,ReviewCount,Useful,Cool,AverageStars,Funny,YelpingSince ) VALUES
('AVegkpnPVnmDOREOa37BAQ','Brittany','','Green',75,91,48,3.96,'21',20120312)





--DELETE FROM [dbo].[User]
--DBCC CHECKIDENT ('INFO_6210_DB.dbo.USER',RESEED, 0)

--ALTER TABLE [dbo].[User]
--ALTER COLUMN Funny varchar(50);

SELECT * FROM [dbo].[User]




/*-------------------------------------------------------Review--------------------------------------------------------*/
INSERT INTO dbo.Review(ID,BusinessID,Ratings,Date,Text,Useful,Funny,UserID) 
VALUES('6qZH_pTGxwTzPHWrkaCdqg','oiAlXZPIFm2nBCt0DHLu_Q',4.0,'2013-03-14','A five star rating for their drycleaning quality and 4 stars for their prices.  Not the cheapest, but relatively cheap nonetheless.  Fast turnaround.\n\nDefinitely my go to place now.\n\nWell see if this continues.',6,0,'pHQcEJbsYThyl_861tc8ug')

INSERT INTO dbo.Review(ID,BusinessID,Ratings,Date,Text,Useful,Funny,UserID) 
VALUES('_3JPujCUaTOmpGDP2TAfdA','uZuh51lXu7tsrC8RAwkg1A',2.0,'2008-12-29','Eh, basically shoes for old women.  The only reason theyre even \"famous\" is cause of Sex and the City... though I did love the knee-length cage boots.\n\nChristian Louboutin FTW.',3,3,'3KK7L2Q6NMfJA1Ky4Ntmdg')

INSERT INTO dbo.Review(ID,BusinessID,Ratings,Date,Text,Useful,Funny,UserID) 
VALUES('IyONmlwJe489r8l6kj1uGw','uZuh51lXu7tsrC8RAwkg1A',5.0,'2015-09-15','Theres a reason SJP on SATC had every pair of Manolos. They are beautiful shoes. This boutique is wonderful. And, the Yelp hype about Jack is no joke, he will provide you with a nice selection of shoes to choose from and is attentive and knowledgeable with good taste. I fell in love with two pairs, and walked away with only one (see my picture). They have anything from work to going out pumps to fancy pumps to flats to booties. If you are looking for a high quality, beautiful shoe, then look no further than Manolo Blahnik. Also, because there are only a couple of retail stores, this location is convenient if you are in Vegas.',2,0,'703E1kuAN7we3Eubx7BUEw')

INSERT INTO dbo.Review(ID,BusinessID,Ratings,Date,Text,Useful,Funny,UserID) 
VALUES('npasuE6MmOaRXl1UxZuydA','oiAlXZPIFm2nBCt0DHLu_Q',5.0,'2012-11-17','This place is TOP Notch!\n\nI had a little black dress then needed some TLC and I hesitantly took it to Green Cleaners since my boyfriend said they were the best and he had used them for years. I was so happy with the work they did! A new hem and mended slip in the back was only $18. I would of gladly paid $30 for the awesome job they did. \n\nThey are also fast, 24 hours later they had 30 dress shirts, 2 suits, and my dress done for $86 total. The staff was really friendly and they offer ice cold bottled water which was so refreshing in the 110 degree Vegas heat.',2,0,'DiJpFejfyeULrFQ2PGP5kg')

INSERT INTO dbo.Review(ID,BusinessID,Ratings,Date,Text,Useful,Funny,UserID) 
VALUES('K0EQddJq0SyheHZHu7Edig','uZuh51lXu7tsrC8RAwkg1A',5.0,'2008-04-13','The staff at Manolo Blahnik is fabulous!   They make you feel like you are a complete rockstar!  Manolo Blahnik has become a regular visit for me every time Im in Vegas.  \n\nFrom the first time going into the store and meeting Phillip (sales associate), Ive been in contact with him - either me visiting or Phillip contacting me about new arrivals or sales via email (along with fabulous pictures). \n\nI just dropped in this past weekend and picked up the classic slingbacks and once again, everyone that was in the boutique was so pleasant.  If all the stores were like this in LV, I would so have a problem!',3,2,'jJlYRJXPdIolKbuqGiZ-CQ')

INSERT INTO dbo.Review(ID,BusinessID,Ratings,Date,Text,Useful,Funny,UserID) 
VALUES('yLKvG7DyMba8RIM5oPoYEw','oiAlXZPIFm2nBCt0DHLu_Q',5.0,'2014-10-09','One of the best cleaners in Vegas hands down. Its a family owned and operated business which Im all for. Gotta support local businesses! All work is done in-house and the turn around is fast. A day later is usually when you can expect your clothes back. The family and staff that work there are always so friendly offering free bottled water or coffee and always asking me about whats going on in my life. Prices are cheap and the quality of service is outstanding.',1,0,'ro8lGoWMsa49B3tWLaWwSA')

INSERT INTO dbo.Review(ID,BusinessID,Ratings,Date,Text,Useful,Funny,UserID) 
VALUES('p_F6Ph_gKUv7eDci5VwoIw','uZuh51lXu7tsrC8RAwkg1A',5.0,'2007-07-05','Head over heels in love with Manolo Blahnik!  This love affair extends to the absolutely magnificent and pleasant, fun and hilarious sales associates at the Manolo Blahnik boutique in The Wynn Esplanade.\n\nJack and Philip are the best!  My best girlfriend and I spent some quality time in here on 2 separate days ... After careful consideration and about a good hard year of longing for this specific pair (she saw them last time we were here in September), she purchased the gorgeous Sedarby DOrsay Blahniks ... Im sure Jack had a lot to do with it!  He was awesome to chat and dish with while trying on the wares ... \n\nOn day 2 in the store, Phillip lured me in with his sparkling eyes and spankin suit (sadly, he would be more interested in one of my best guy friends ... boo hoo!) ... Now, I was very much tempted with another pair of the delicious Camparis in a gorgeous fire engine red, but I practiced self restraint (only because I just purchased another pair of Louboutin) and only purchased the Manolo Blahnik candle ... Yep, he makes a candle ... All wrapped up neatly in a signature white Manolo Blahnik box with its own dust bag ... $75 later Im a very happy little girl!',2,2,'skjkxo7Ewz3cbxW4TQNK5g')

INSERT INTO dbo.Review(ID,BusinessID,Ratings,Date,Text,Useful,Funny,UserID) 
VALUES('cQLOOZXNEps98crmdk8UHw','uZuh51lXu7tsrC8RAwkg1A',4.0,'2010-07-10','Do you believe in love at first sight?  I wasnt looking then I saw then I fell in love.\n\nYou were so beautiful inside out.  I almost walked away and I was glad I didnt.  I touched your soft, silky skin and I couldnt let go.  You teased me and said take me home...I wouldnt disappoint you.  I would always be there for you.  You stared at me and you hypnotized me.\n\nI fit pefectly in you.  Never I saw something so perfect.  \n\nI took you home..you are mine now.  Never will I let you go.  I promise to take care of you.  I promise to love and cherish you.  I love you my Manolo!!\n\n4 stars!!  Btw Nadine the saleslady was great.  Manolo only has 2 stores: New York and this location...but they do sell their products at Nordstrom, Barneys, Neiman Marcus, Saks Fifth Avenue and other fine stores.\n\nShoegasm part 6!!!!',13,14,'W7DHyQlY_kXls2iXt-_2Ag')

INSERT INTO dbo.Review(ID,BusinessID,Ratings,Date,Text,Useful,Funny,UserID) 
VALUES('1ZMLccxmyGqY9VBNSMHpzA','f9NumwFMBDn751xgFiRbNA',5.0,'2018-02-19','Ive been to this range twice so far, and have had a great experience both times. They have a great Groupon offer that makes rentals and shooting pretty affordable. Whether this is your first time at a range or you are an experienced shooter, I would recommend checking out the range at Lake Norman!',3,1,'x8e1Cc1lh835Q1CpHAD0RQ')

INSERT INTO dbo.Review(ID,BusinessID,Ratings,Date,Text,Useful,Funny,UserID) 
VALUES('WdVZ8n8U_61nR5EGR6T','uZuh51lXu7tsrC8RAwkg1A',5.0,'2007-12-25','I suppose its fitting enough that my 200th review be of Manolo Blahnik.  This particular Manolo Blahnik is lovely.  The sales are excellent.  The service is great as well-- although be prepared for a hard sell.  I know I have \"gorgeous feet\", but please, youre making me blush!  The styles are whimsical and stunning.  Shoes fit for a princess.  Its nice to shop in MB outside of NYC.  Its definitely a more relaxing experience.  If you can swing a pair or two-- MB is splurge-worthy.',0,1,'zD1T8JFx3O1Rf9aNu49rpQ')

INSERT INTO dbo.Review(ID,BusinessID,Ratings,Date,Text,Useful,Funny,UserID) 
VALUES('WdVZ8n8U_61nR5EGR6CC','uZuh51lXu7tsrC8RAwkg1A',4.0,'2017-12-25','Tried this place again. Boring as hell!',0,1,'zD1T8JFx3O1Rf9aNu49rpQ')

SELECT * FROM dbo.Review

------------------------------- Tips ----------------------

INSERT INTO dbo.Tip(BusinessID,User_ID,Text,DateID,Compliment_Count) 
VALUES('f9NumwFMBDn751xgFiRbNA','703E1kuAN7we3Eubx7BUEw','Friendly staff!',20140129,0);

INSERT INTO dbo.Tip(BusinessID,User_ID,Text,DateID,Compliment_Count) 
VALUES('oiAlXZPIFm2nBCt0DHLu_Q','x8e1Cc1lh835Q1CpHAD0RQ','This is an on-premises dry cleaner, meaning your clothes are not shipped off to some big central laundry and back. On-premises cleaners are the only cleaners you should consider using. This is one.',20130918,0);

INSERT INTO dbo.Tip(BusinessID,User_ID,Text,DateID,Compliment_Count) 
VALUES('cKyLV5oWZJ2NudWgqs8VZw','W7DHyQlY_kXls2iXt-_2Ag','Great place to go for honest, good old fashioned auto repair. If you dont need it, they dont try to sell it to you.',20130731,0);

INSERT INTO dbo.Tip(BusinessID,User_ID,Text,DateID,Compliment_Count) 
VALUES('ScYkbYNkDgCneBrD9vqhCQ','ro8lGoWMsa49B3tWLaWwSA','They always take great care of my vehicle as if I were family!',20151215,0);
--------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM dbo.[User]

INSERT INTO dbo.Tip(BusinessID,User_ID,Text,DateID,Compliment_Count) 
VALUES('oiAlXZPIFm2nBCt0DHLu_Q','AVegkpnPVnmDOREOa37BAQ','Great service. Great work. Great prices!!',20131216,0);

INSERT INTO dbo.Tip(BusinessID,User_ID,Text,DateID,Compliment_Count) 
VALUES('oiAlXZPIFm2nBCt0DHLu_Q','nI2gZyZReOun6PSPlq7iSw','Convenient and great prices !!',20140129,0);

INSERT INTO dbo.Tip(BusinessID,User_ID,Text,DateID,Compliment_Count) 
VALUES('f9NumwFMBDn751xgFiRbNA','46HhzhpBfTdTSB5ceTx_Og','Friendly staff!',20120528,0);

INSERT INTO dbo.Tip(BusinessID,User_ID,Text,DateID,Compliment_Count) 
VALUES('oiAlXZPIFm2nBCt0DHLu_Q','zgV0ZroIF956gw4cul8MHA','best cleaner around and they are Eco',20120927,0);

INSERT INTO dbo.Tip(BusinessID,User_ID,Text,DateID,Compliment_Count) 
VALUES('EosRKXIGeSWFYWwpkbhNnA','WeVkkF5L39888IPPlRhNpg','Monitor your bank accounts regularly. They commonly make "mistakes" that they wont refund you for on your monthly membership fees',20160602,1);

INSERT INTO dbo.Tip(BusinessID,User_ID,Text,DateID,Compliment_Count) 
VALUES('x3Po6tJGb729u_HJPY6UCA','QoGAyJ-4J2y9XOq1b5LFaA','Amazing! ! Work performed, completed the job ahead of time and we love our new pool.',20160109,0);



SELECT * FROM dbo.Tip

--------------------------- CheckIn ----------------------

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('6OAZjbxqM5ol29BuHsil3w',20120416,205318);

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('6OAZjbxqM5ol29BuHsil3w',20140221,213236);

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('6OAZjbxqM5ol29BuHsil3w',20180313,182806);

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('CsLQLiRoafpJPJSkNX2h5Q',20100926,155939);

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('CsLQLiRoafpJPJSkNX2h5Q',20111130,121811);

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('CsLQLiRoafpJPJSkNX2h5Q',20111128,151353);

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('CsLQLiRoafpJPJSkNX2h5Q',20111130,233929);

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('CsLQLiRoafpJPJSkNX2h5Q',20130220,42102);

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('EosRKXIGeSWFYWwpkbhNnA',20120612,191912);

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('EosRKXIGeSWFYWwpkbhNnA',20130211,144302);

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('EosRKXIGeSWFYWwpkbhNnA',20130222,175639);

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('EosRKXIGeSWFYWwpkbhNnA',20130305,210240);

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('M_guz7Dj7hX0evS672wIwA',20180427,221312);

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('M_guz7Dj7hX0evS672wIwA',20180519,2651);

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('ScYkbYNkDgCneBrD9vqhCQ',20130529,152043);

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('ScYkbYNkDgCneBrD9vqhCQ',20130712,204848);

INSERT INTO dbo.CheckIn(BusinessID,Date_Dim_DateID,Time_Dim_TimeKey) 
VALUES('ScYkbYNkDgCneBrD9vqhCQ',20130716,183022);

SELECT * FROM dbo.CheckIn
------------------------- Elite Years ---------------------------
--ALTER TABLE [dbo].[Elite_Years] ALTER COLUMN [Year] INT;

/*ALTER TABLE [dbo].[Elite_Years]  
DROP CONSTRAINT [PK__Elite_Ye__D4BD6055D048B3D6];   
GO  

alter table [dbo].[Elite_Years] alter column [Year] int not null

alter table [dbo].[Elite_Years] add primary key ([Year])
*/

Select * from dbo.Elite_Years

INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('3KK7L2Q6NMfJA1Ky4Ntmdg',2010);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('3KK7L2Q6NMfJA1Ky4Ntmdg',2011);

INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('703E1kuAN7we3Eubx7BUEw',2010);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('703E1kuAN7we3Eubx7BUEw',2011);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('703E1kuAN7we3Eubx7BUEw',2012);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('703E1kuAN7we3Eubx7BUEw',2013);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('703E1kuAN7we3Eubx7BUEw',2014);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('703E1kuAN7we3Eubx7BUEw',2015);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('703E1kuAN7we3Eubx7BUEw',2016);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('703E1kuAN7we3Eubx7BUEw',2017);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('703E1kuAN7we3Eubx7BUEw',2018);

--INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('DiJpFejfyeULrFQ2PGP5kg','');

INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('jJlYRJXPdIolKbuqGiZ-CQ',2007);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('jJlYRJXPdIolKbuqGiZ-CQ',2008);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('jJlYRJXPdIolKbuqGiZ-CQ',2009);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('jJlYRJXPdIolKbuqGiZ-CQ',2010);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('jJlYRJXPdIolKbuqGiZ-CQ',2011);

/*INSERT INTO dbo.Elite_Years(UserID,Year)
VALUES('pHQcEJbsYThyl_861tc8ug','');

INSERT INTO dbo.Elite_Years(UserID,Year)
VALUES('ro8lGoWMsa49B3tWLaWwSA','');*/

INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('skjkxo7Ewz3cbxW4TQNK5g',2007);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('skjkxo7Ewz3cbxW4TQNK5g',2008);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('skjkxo7Ewz3cbxW4TQNK5g',2009);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('skjkxo7Ewz3cbxW4TQNK5g',2010);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('skjkxo7Ewz3cbxW4TQNK5g',2011);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('skjkxo7Ewz3cbxW4TQNK5g',2012);

INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('W7DHyQlY_kXls2iXt-_2Ag',2010);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('W7DHyQlY_kXls2iXt-_2Ag',2011);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('W7DHyQlY_kXls2iXt-_2Ag',2012);

INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('x8e1Cc1lh835Q1CpHAD0RQ',2016);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('x8e1Cc1lh835Q1CpHAD0RQ',2017);
INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('x8e1Cc1lh835Q1CpHAD0RQ',2018);

--INSERT INTO dbo.Elite_Years(UserID,Year) VALUES('zD1T8JFx3O1Rf9aNu49rpQ','');


Select * from dbo.Elite_Years

------------------------------------ User Friend ------------------------------
/*ALTER TABLE dbo.User_Friends   
DROP CONSTRAINT [PK_User_Friends];   
GO  

alter table dbo.User_Friends 
alter column FriendID varchar(50) not null*/

INSERT INTO dbo.User_Friends(UserID,FriendID) Values('pHQcEJbsYThyl_861tc8ug','AVegkpnPVnmDOREOa37BAQ')
INSERT INTO dbo.User_Friends(UserID,FriendID) Values('pHQcEJbsYThyl_861tc8ug','WeVkkF5L39888IPPlRhNpg')
INSERT INTO dbo.User_Friends(UserID,FriendID) Values('pHQcEJbsYThyl_861tc8ug','zgV0ZroIF956gw4cul8MHA')

INSERT INTO dbo.User_Friends(UserID,FriendID) Values('3KK7L2Q6NMfJA1Ky4Ntmdg','nI2gZyZReOun6PSPlq7iSw')
INSERT INTO dbo.User_Friends(UserID,FriendID) Values('3KK7L2Q6NMfJA1Ky4Ntmdg','46HhzhpBfTdTSB5ceTx_Og')
INSERT INTO dbo.User_Friends(UserID,FriendID) Values('3KK7L2Q6NMfJA1Ky4Ntmdg','QoGAyJ-4J2y9XOq1b5LFaA')
INSERT INTO dbo.User_Friends(UserID,FriendID) Values('3KK7L2Q6NMfJA1Ky4Ntmdg','DiJpFejfyeULrFQ2PGP5kg')

INSERT INTO dbo.User_Friends(UserID,FriendID) Values('W7DHyQlY_kXls2iXt-_2Ag','703E1kuAN7we3Eubx7BUEw')
INSERT INTO dbo.User_Friends(UserID,FriendID) Values('W7DHyQlY_kXls2iXt-_2Ag','skjkxo7Ewz3cbxW4TQNK5g')
INSERT INTO dbo.User_Friends(UserID,FriendID) Values('W7DHyQlY_kXls2iXt-_2Ag','zD1T8JFx3O1Rf9aNu49rpQ')

INSERT INTO dbo.User_Friends(UserID,FriendID) Values('jJlYRJXPdIolKbuqGiZ-CQ','ro8lGoWMsa49B3tWLaWwSA')
INSERT INTO dbo.User_Friends(UserID,FriendID) Values('jJlYRJXPdIolKbuqGiZ-CQ','x8e1Cc1lh835Q1CpHAD0RQ')
INSERT INTO dbo.User_Friends(UserID,FriendID) Values('jJlYRJXPdIolKbuqGiZ-CQ','AVegkpnPVnmDOREOa37BAQ')
INSERT INTO dbo.User_Friends(UserID,FriendID) Values('46HhzhpBfTdTSB5ceTx_Og','zgV0ZroIF956gw4cul8MHA')


Select * from User_Friends
