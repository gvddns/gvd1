CREATE DATABASE GB3;
USE GB3;
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

CREATE TABLE Customer1 (
    CustomerID int identity primary key,
    CName varchar(255),
    CCity varchar(255),
    Grade integer,
	SalesmanID int foreign key references Salesman(SalesmanID)
	);

	INSERT into Customer1 VALUES
	('Mahesh', 'Nasik', 10,3),
	('Anna', 'Pune', 12,2),
	('Eva', 'Pune', 8,1);

SELECT Salesman.SName, Customer1.CName, Customer1.CCity
From Salesman
INNER JOIN Customer1 on Customer1.CCity = Salesman.City;


SELECT Customer1.CName,Customer1.CCity,Salesman.SName,Salesman.Commision  
From Salesman
INNER JOIN Customer1 on Customer1.CCity = Salesman.City;




Drop table Customer1;
drop table Salesman;