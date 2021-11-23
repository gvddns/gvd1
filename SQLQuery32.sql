BEGIN TRY
DECLARE @num INT, @msg VARCHAR(200)
SET @num =10/0;
PRINT 'Number cant be divided by zero'
End TRY

BEGIN CATCH
PRINT 'Dont divide number by zero'
SET @msg = (SELECT ERROR_MESSAGE())
PRINT @msg
END CATCH
GO