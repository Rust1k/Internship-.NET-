-- Test update
BEGIN TRANSACTION;  

UPDATE TestTable SET val = 10 WHERE id = 1;

COMMIT TRANSACTION; 

-- Test insert
BEGIN TRANSACTION;  

INSERT INTO TestTable VALUES(1000)

COMMIT TRANSACTION; 