/*
==================================================
Create Database and Schemas
==================================================

Script Purpose:
	This script creates a new database named 'Datawarehouse' after checking if it is already exists.
	If the database exists, it is dropped and recreated. Additonally, the scripts sets up three schemas
	within the database: 'bronze', 'silver', 'gold'.
WARNING:
	Running this script	will drop the entire database 'Datawarehouse' if it exists.
	All data in the database will be permanently deleted. Proceed with caution 
	and ensure you have proper backups before running the script.
	
*/
--Drop and recreate the 'DataWarehouse' database
IF EXISTS ( SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Datawarehouse;
END;
GO

--Create the 'Datawarehouse' Database
CREATE DATABASE Datawarehouse;

USE Datawarehouse;

--Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
