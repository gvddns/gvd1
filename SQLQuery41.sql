CREATE PROCEDURE BALANCE1
AS
BEGIN
IF TRANSACTIONS.TransactionType = 'c'
BEGIN
Update BANK_ACCOUNT
SET Balanace = Balance + TRANSACTIONS.TransactionAmt;
END
ELSE
BEGIN
Update BANK_ACCOUNT
SET Balanace = Balance - TRANSACTIONS.TransactionAmt;
END
END
GO