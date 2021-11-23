use GB
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

INSERT INTO Persons
VALUES (2, 'ANA', 'ADB', 'PUNE', 'PUNE'),(3, 'ana', 'DB', 'NASIK', 'NASIK'),(3, 'ada', 'ADB', 'NASIK', 'NASIK'),(3, 'ava', 'GDB', 'NASIK', 'NASIK');

INSERT INTO Persons
VALUES (3, 'ava', 'GDB', 'NASIK', 'NASIK');
SELECT * FROM Persons;

CREATE VIEW [NASIK PEOPLE] AS
SELECT LastName, FirstName
FROM Persons
WHERE City = 'NASIK';



SELECT * FROM [NASIK PEOPLE];

ALTER VIEW [NASIK PEOPLE] AS
SELECT LastName, FirstName, Address
FROM Persons
WHERE City = 'NASIK';

SELECT * FROM [NASIK PEOPLE];

select CURRENT_USER

CREATE SCHEMA NEWschema
   AUTHORIZATION dbo
GO

CREATE TABLE NEWschema.gvd (
    PersonID int identity,
    LastName varchar(255),
    FirstName varchar(255));

	SELECT  *
FROM sys.schemas 

INSERT INTO NEWschema.gvd VALUES('Govinda','Bub'),('Pranav', 'ANAND');

SELECT * FROM NEWschema.gvd;