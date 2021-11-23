DECLARE @d DATETIME ='12-31-2020'
SELECT FORMAT(@d,'d','en-us') as 'US Time',
FORMAT(@d,'d','in') as 'India Time',
FORMAT(@d,'d','no') as 'Norwey Time';



SELECT Trim('        DEMO         ') as 'TRIMMED RESULT'

SELECT 