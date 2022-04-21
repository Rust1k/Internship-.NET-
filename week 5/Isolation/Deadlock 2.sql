
BEGIN TRANSACTION
	UPDATE TestTable2                                
        SET val = 22                                 
        WHERE id = 1;  

	  WAITFOR DELAY '00:00:10'

	  UPDATE TestTable                                
        SET val = 22                                 
        WHERE id = 1;
COMMIT