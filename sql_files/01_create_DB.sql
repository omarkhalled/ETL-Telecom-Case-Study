USE master
GO
IF EXISTS (SELECT
    *
  FROM sys.databases
  WHERE name = 'ETL_Telecom')
  DROP DATABASE ETL_Telecom

GO

CREATE DATABASE ETL_Telecom