CREATE TRIGGER Transaction1
ON TRANSACTIONS
AFTER INSERT AS
BEGIN
--SELECT * INTO #TempInserted FROM inserted
if 'b' = (SELECT Type1 FROM inserted)
begin
UPDATE BANK_ACCOUNT SET
Debit = (SELECT Amt FROM inserted)
WHERE BANK_ACCOUNT.CustomerID = (SELECT Customer FROM inserted)
end
else
begin
UPDATE BANK_ACCOUNT SET
Credit = (SELECT Amt FROM inserted)
WHERE BANK_ACCOUNT.CustomerID = (SELECT Customer FROM Inserted)
end
END

DROP Trigger Transaction1