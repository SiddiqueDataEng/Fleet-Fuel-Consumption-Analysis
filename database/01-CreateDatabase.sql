/*
 * Fleet Fuel Consumption Analysis
 * Project #95 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, SSRS
 * Created: 2013
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'FleetReports')
BEGIN
    ALTER DATABASE FleetReports SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE FleetReports;
END
GO

CREATE DATABASE FleetReports
ON PRIMARY
(
    NAME = 'FleetReports_Data',
    FILENAME = 'C:\SQLData\FleetReports_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'FleetReports_Log',
    FILENAME = 'C:\SQLData\FleetReports_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE FleetReports SET RECOVERY SIMPLE;
ALTER DATABASE FleetReports SET AUTO_UPDATE_STATISTICS ON;
GO

USE FleetReports;
GO

PRINT 'Database FleetReports created successfully';
PRINT 'Project: Fleet Fuel Consumption Analysis';
PRINT 'Description: Fuel inefficiency identification';
GO
