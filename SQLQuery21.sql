

CREATE TABLE PersonOr1 (
    PersonID int primary key not null identity,
    LastName varchar(255) not null,
    FirstName varchar(255) not null
	);
	insert into PersonOr1
	VALUES('Govinda','Bub'),('Pranav', 'ANAND'),('dinesh','dns'),('santosh','sts');


CREATE TABLE Order11(
    PersonID int,
    orderno int not null
	);
insert into Order11
VALUES(1,123),(2,124),(2,125),(2,126),(3,127);

--SELECT * FROM PersonOr1, Order11
--where PersonOr1.PersonID = Order11.PersonID;

SELECT PersonOr1.PersonID, PersonOr1.LastName, PersonOr1.FirstName, Order11.orderno
FROM Order11 
left JOIN PersonOr1 on
PersonOr1.PersonID = Order11.PersonID;

CREATE VIEW PersonOrderDetail AS
SELECT PersonOr1.PersonID, PersonOr1.LastName, PersonOr1.FirstName, Order11.orderno 
FROM PersonOr1, Order11 
WHERE PersonOr1.PersonID = Order11.PersonID;
--SELECT orderno FROM Order11 WHERE PersonOr1.PersonID = Order11.PersonID;

SELECT * FROM PersonOrderDetail;

DROP TABLE Order11;
DROP TABLE PersonOr1;
DROP VIEW PersonOrderDetail;

SELECT CURRENT_TIMESTAMP