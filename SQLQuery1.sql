CREATE DATABASE GB

CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

INSERT INTO Persons
VALUES (2, 'ANA', 'ADB', 'PUNE', 'PUNE'),(3, 'ava', 'GDB', 'NASIK', 'NASIK'),(3, 'ava', 'GDB', 'NASIK', 'NASIK'),(3, 'ava', 'GDB', 'NASIK', 'NASIK');

INSERT INTO Persons
VALUES (3, 'ava', 'GDB', 'NASIK', 'NASIK');
SELECT * FROM Persons;

sp_rename 'Persons.City', 'tOWN', 'COLUMN';

DELETE FROM Persons WHERE Personid=1;

DROP TABLE Persons;