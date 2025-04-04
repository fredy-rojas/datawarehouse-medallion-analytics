-- CREATE DATAWAREHOUSE


USE master
-- Creating new database 
IF NOT EXISTS (
    SELECT 1 
    FROM sys.databases 
    WHERE name = 'FR01_medallion'
)
BEGIN
    CREATE DATABASE FR01_medallion;
END;


-- ---------------------------------
USE FR01_medallion;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
