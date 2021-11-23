BEGIN TRY
DECLARE @num INT, @msg VARCHAR(200)
SET @num =10/0;
PRINT 'Number cant be divided by zero'
End TRY

BEGIN CATCH
PRINT 'Dont divide number by zero'
SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_SEVERITY() as Errorseverity,
ERROR_STATE() as errorstate, ERROR_PROCEDURE() AS errorprocedure, ERROR_LINE() as errorline,
ERROR_MESSAGE() as errormessage ;
END CATCH
GO