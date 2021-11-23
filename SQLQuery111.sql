CREATE DATABASE GB2
USE DATABASE GB1
CREATE TABLE Salesman (
    SalesmanID int primary key identity,
    SName varchar(255),
    City varchar(255),
    Commision integer
	);
	INSERT into Salesman VALUES
	('Anand', 'Nasik', '10'),
	('Pranav', 'Pune', '12'),
	('Govinda', 'Nasik', '8');

SELECT * FROM Salesman;

CREATE TABLE Customer1 (
    CustomerID int identity primary key,
    CName varchar(255),
    CCity varchar(255),
    Grade integer,
	SalesmanID int foreign key references Salesman(SalesmanID)
	);

	INSERT into Customer1 VALUES
	('Mahesh', 'Nasik', 10,3),
	('Pranav', 'Pune', 12,2),
	('Govinda', 'Pune', 8,1);

	DROP TABLE Customer1
