# drop all table
DO $$ 
DECLARE 
    tabname text; 
BEGIN 
    FOR tabname IN (SELECT tablename FROM pg_tables WHERE schemaname = 'public') 
    LOOP 
        EXECUTE 'DROP TABLE IF EXISTS ' || tabname || ' CASCADE'; 
    END LOOP; 
END $$;
