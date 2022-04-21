BEGIN TRANSACTION                            
    UPDATE TestTable                                
        SET val = 11                                 
        WHERE id = 1;
    
    WAITFOR DELAY '00:00:10'                   

	UPDATE TestTable2                                
        SET val = 11                                 
        WHERE id = 1;  
                     
COMMIT                                        
