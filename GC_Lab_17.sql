CREATE DATABASE TravelDb

GO

USE TravelDb

GO

CREATE TABLE User (
Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
FirstName NVARCHAR(20) NOT NULL,
LastName NVARCHAR(40),
DOB DATE NOT NULL
Address NVARCHAR(60) NOT NULL
Phone Number NVARCHAR(14) NOT NULL
) 

CREATE TABLE Passport (
Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Passport Number INT NOT NULL,
Expiration Date DATE NOT NULL,
Address on Passport NVARCHAR(60) NOT NULL,
)

CREATE TABLE Trip (
Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Start Date DATE,
End Date DATE,
Travel Mode NVARCHAR(30),
Starting Destination NVARCHAR(30),
Ending Destination NVARCHAR(30),
)

CREATE TABLE Hotel (
Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Hotel Name NVARCHAR(20) NOT NULL,
Guest Name NVARCHAR(30) NOT NULL,
Guest Address NVARCHAR(60) NOT NULL
Guest Phone Number NVARCHAR(14) NOT NULL
Check-in Date DATE NOT NULL,
Check-out Date DATE NOT NULL,
Cost per Night DECIMAL NOT NULL
)

GO

ALTER TABLE User
ADD PassportID IN FOREIGN KEY REFERENCES Passport(Id)

GO

ALTER TABLE Passport
ADD UserID IN FOREIGN KEY REFERENCES User(Id)

GO

ALTER TABLE User
ADD TripID INT FOREIGN KEY REFERENCES Trip(Id)

GO 

ALTER TABLE Trip
ADD UserID INT FOREIGN KEY REFERENCES User(Id)

CREATE TABLE UserTrip(
Id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
ADD UserID INT FOREIGN KEY REFERENCES User(Id)
ADD TripID INT FOREIGN KEY REFERENCES Trip(Id)
)

CREATE TABLE TripHotel(
Id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
ADD TripID INT FOREIGN KEY REFERENCES Trip(Id)
ADD HotelID INT FOREIGN KEY REFERENCES Hotel(Id)
)

GO

INSERT INTO User(Id, FirstName, LastName, DOB, Address, Phone Number)
VALUES(1, ‘Elizabeth’, ‘Gilbert’, 2/27/1970, ‘3102 Park Ave., New York, NY 02111’, ‘(989) 217-1101’)

INSERT INTO Passport(Id, Passport Number, Expiration Date, Address on Passport)
VALUES(1, 12903427801, 2007-01-31, ‘3102 Park Ave., New York, NY 02111’,)

INSERT INTO Trip(Id, Start Date, End Date, Travel Mode, Starting Destination, Ending Destination)
VALUES(1, 2006-01-31, 2006-02-14, ‘Blimp’, ‘NYC’, ‘Rome’), (2, 2006-02-14, 2006-03-18, ‘Ferry’, ‘Rome’, ‘Mumbai’), (3, 2006-03-18, 2006-04-20, ‘Camel’, ‘Mumbai’, ‘Bali’), (4, 2006-04-20, 2006-04-21, ‘Zipline’, ‘Bali’, ‘NYC’)

INSERT INTO Hotel(Id, Hotel Name, Guest Name, Guest Address, Guest Phone Number, Check-in Date, Check-out Date, Cost per Night)
VALUES(1, ‘Hotel Artemide’, Elizabeth Gilbert’, ‘3102 Park Ave., New York, NY 02111’, ‘(989) 217-1101’, 2006-02-01, 2006-02-14, 199.99), (2, ‘Global Vipassana Pagoda’, ‘Elizabeth Gilbert’, ‘3102 Park Ave., New York, NY 02111’, ‘(989) 217-1101’, 2006-02-17, 2006-03-11, 5.00), (3, ‘Nandini Jungle Resort and Spa’, ‘Elizabeth Gilbert’, ‘3102 Park Ave., New York, NY 02111’, ‘(989) 217-1101’, 2006-03-17, 2006-04-20, $456.00)

INSERT INTO UserPassport(UserId, PassportID)
VALUES (1,1)

INSERT INTO UserTrip(UserId, TripId)
VALUES(1, 1), (1,2), (1,3)

INSERT INTO TripHotel(TripID, HotelId)
VALUES(1, 1), (2,2), (3,3)
REATE DATABASE TravelDb

GO

USE TravelDb

GO

CREATE TABLE User (
Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
FirstName NVARCHAR(20) NOT NULL,
LastName NVARCHAR(40),
DOB DATE NOT NULL
Address NVARCHAR(60) NOT NULL
Phone Number NVARCHAR(14) NOT NULL
) 

CREATE TABLE Passport (
Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Passport Number INT NOT NULL,
Expiration Date DATE NOT NULL,
Address on Passport NVARCHAR(60) NOT NULL,
)

CREATE TABLE Trip (
Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Start Date DATE,
End Date DATE,
Travel Mode NVARCHAR(30),
Starting Destination NVARCHAR(30),
Ending Destination NVARCHAR(30),
)

CREATE TABLE Hotel (
Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Hotel Name NVARCHAR(20) NOT NULL,
Guest Name NVARCHAR(30) NOT NULL,
Guest Address NVARCHAR(60) NOT NULL
Guest Phone Number NVARCHAR(14) NOT NULL
Check-in Date DATE NOT NULL,
Check-out Date DATE NOT NULL,
Cost per Night DECIMAL NOT NULL
)

GO

ALTER TABLE User
ADD PassportID IN FOREIGN KEY REFERENCES Passport(Id)

GO

ALTER TABLE Passport
ADD UserID IN FOREIGN KEY REFERENCES User(Id)

GO

ALTER TABLE User
ADD TripID INT FOREIGN KEY REFERENCES Trip(Id)

GO 

ALTER TABLE Trip
ADD UserID INT FOREIGN KEY REFERENCES User(Id)

CREATE TABLE UserTrip(
Id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
ADD UserID INT FOREIGN KEY REFERENCES User(Id)
ADD TripID INT FOREIGN KEY REFERENCES Trip(Id)
)

CREATE TABLE TripHotel(
Id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
ADD TripID INT FOREIGN KEY REFERENCES Trip(Id)
ADD HotelID INT FOREIGN KEY REFERENCES Hotel(Id)
)

GO

INSERT INTO User(Id, FirstName, LastName, DOB, Address, Phone Number)
VALUES(1, ‘Elizabeth’, ‘Gilbert’, 2/27/1970, ‘3102 Park Ave., New York, NY 02111’, ‘(989) 217-1101’)

INSERT INTO Passport(Id, Passport Number, Expiration Date, Address on Passport)
VALUES(1, 12903427801, 2007-01-31, ‘3102 Park Ave., New York, NY 02111’,)

INSERT INTO Trip(Id, Start Date, End Date, Travel Mode, Starting Destination, Ending Destination)
VALUES(1, 2006-01-31, 2006-02-14, ‘Blimp’, ‘NYC’, ‘Rome’), (2, 2006-02-14, 2006-03-18, ‘Ferry’, ‘Rome’, ‘Mumbai’), (3, 2006-03-18, 2006-04-20, ‘Camel’, ‘Mumbai’, ‘Bali’), (4, 2006-04-20, 2006-04-21, ‘Zipline’, ‘Bali’, ‘NYC’)

INSERT INTO Hotel(Id, Hotel Name, Guest Name, Guest Address, Guest Phone Number, Check-in Date, Check-out Date, Cost per Night)
VALUES(1, ‘Hotel Artemide’, Elizabeth Gilbert’, ‘3102 Park Ave., New York, NY 02111’, ‘(989) 217-1101’, 2006-02-01, 2006-02-14, 199.99), (2, ‘Global Vipassana Pagoda’, ‘Elizabeth Gilbert’, ‘3102 Park Ave., New York, NY 02111’, ‘(989) 217-1101’, 2006-02-17, 2006-03-11, 5.00), (3, ‘Nandini Jungle Resort and Spa’, ‘Elizabeth Gilbert’, ‘3102 Park Ave., New York, NY 02111’, ‘(989) 217-1101’, 2006-03-17, 2006-04-20, $456.00)

INSERT INTO UserPassport(UserId, PassportID)
VALUES (1,1)

INSERT INTO UserTrip(UserId, TripId)
VALUES(1, 1), (1,2), (1,3)

INSERT INTO TripHotel(TripID, HotelId)
VALUES(1, 1), (2,2), (3,3)

