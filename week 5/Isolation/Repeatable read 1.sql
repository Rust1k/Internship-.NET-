SET TRANSACTION ISOLATION LEVEL REPEATABLE READ

BEGIN TRANSACTION;  

SELECT val FROM TestTable;

WAITFOR DELAY '00:00:07';

SELECT val FROM TestTable;

COMMIT TRANSACTION;  
