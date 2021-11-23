CREATE TRIGGER Transaction2
ON TRANSACTIONS
AFTER INSERT AS
BEGIN
if 'b' = (SELECT Type1 FROM inserted)
begin
UPDATE BANK_ACCOUNT SET
Balance = Balance - (SELECT Amt FROM inserted)
WHERE BANK_ACCOUNT.CustomerID = (SELECT Customer FROM Inserted)
end
else
begin
UPDATE BANK_ACCOUNT SET
Balance = Balance + (SELECT Amt FROM inserted)
WHERE BANK_ACCOUNT.CustomerID = (SELECT Customer FROM Inserted)
end
SELECT * FROM BANK_ACCOUNT;
SELECT * FROM TRANSACTIONS;
END

Drop trigger Transaction2