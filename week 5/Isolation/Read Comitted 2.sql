
-- Test simple read
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

BEGIN TRANSACTION;  

SELECT val FROM TestTable WHERE id = 1;

COMMIT TRANSACTION;  

-- Test update
BEGIN TRANSACTION;  

UPDATE TestTable SET val = 1 WHERE id = 1;

COMMIT TRANSACTION; 

-- Test insert
BEGIN TRANSACTION;  

INSERT INTO TestTable VALUES(10); 

COMMIT TRANSACTION;  