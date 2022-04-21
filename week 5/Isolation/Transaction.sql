
UPDATE TestTable SET val = 1 WHERE id = 1;

SELECT val FROM TestTable WHERE id = 1;

BEGIN TRANSACTION;  

UPDATE TestTable SET val = 2 WHERE id = 1;

COMMIT TRANSACTION;  

SELECT val FROM TestTable WHERE id = 1;

BEGIN TRANSACTION;  

UPDATE TestTable SET val = -1 WHERE id = 1
IF (@@ERROR <> 0) 
			BEGIN 
				PRINT N'A check constraint violation occurred.';
				ROLLBACK;
			END
ELSE
	COMMIT TRANSACTION;  

SELECT val FROM TestTable WHERE id = 1;