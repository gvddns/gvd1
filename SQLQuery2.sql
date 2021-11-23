CREATE TABLE Persons (
    PersonID int identity(10,1),
    LastName varchar(255),
    FirstName varchar(255),
    Age int CHECK (Age>=18)

	);

INSERT INTO Persons
VALUES ('aa', 'DB', 15);


SELECT * FROM Persons;


SELECT LastName, ASCII(LastName) as 'numcode'
from Persons

DROP TABLE Persons;

