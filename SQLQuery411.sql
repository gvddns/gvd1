USE GB1
CREATE TABLE BANK_ACCOUNT(
CustomerId INT PRIMARY KEY IDENTITY,
CustomerName VARCHAR(200),
Balance DECIMAL(10,2),
Debit DECIMAL(10,2),
Credit DECIMAL(10,2),
);

CREATE TABLE TRANSACTIONS(
TransactionId INT PRIMARY KEY IDENTITY(1000,23),
Amt FLOAT NOT NULL,
Type1 char(1) NOT NULL,
Customer INT FOREIGN KEY REFERENCES BANK_ACCOUNT(CustomerId),
TransactionTime Date);


INSERT INTO BANK_ACCOUNT VALUES
('Govinda',500000,0,0),
('Pranav',1200000,0,0),
('Anand',320000,0,0);

SELECT * FROM BANK_ACCOUNT

INSERT INTO TRANSACTIONS VALUES ('10000','c',1,CURRENT_TIMESTAMP);
INSERT INTO TRANSACTIONS VALUES ('2000','d',2,CURRENT_TIMESTAMP);

BEGIN TRANSACTION GVD
INSERT INTO BANK_ACCOUNT values('Dinesh',620000,0,0)
SELECT * FROM BANK_ACCOUNT;
--COMMIT;
--BEGIN TRANSACTION AN
INSERT INTO BANK_ACCOUNT values('Santosh',520000,0,0)
SELECT * FROM BANK_ACCOUNT;
rollback;
SELECT * FROM BANK_ACCOUNT;

SAVE TRANSACTION SP1
DELETE FROM BANK_ACCOUNT WHERE 

SAVE TRANSACTION SP2
ROLLBACK








DROP TABLE BANK_ACCOUNT;

DROP TABLE TRANSACTIONS

