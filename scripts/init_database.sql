/*
----------------------------------------------------------------------------------------------------
Create Database and Schemas
----------------------------------------------------------------------------------------------------
Script Purpose:
              This script creates a new database named 'DataWarehouse' after checking if it already exists.
              If the database exists, it is droped and recreated. Additionally, the scripts sets up three schemas
              within the database: 'bronze', 'silver', and 'gold'.

WARNING:
        Runing this script will drop the entire 'DataWarehouse' database if it exists.
        All data in the database will be permanently deleted. Proceed with causion
        and ensure you have proper backup before running this script.
*/

USE master;
Go

--Drop and recreate the 'DataWarehouse' database
IF EXISTs (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE)
    DROP DATABASE DataWarehouse;
END;
GO

--Create the 'DataWherehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
