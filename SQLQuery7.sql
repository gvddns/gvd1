CREATE PROCEDURE JOINEDTABLE2
AS
SELECT * 
FROM AGENTS
INNER JOIN CUSTOMER ON AGENTS.AGENT_CODE = CUSTOMER.AGENT_CODE;
GO

EXEC JOINEDTABLE2;