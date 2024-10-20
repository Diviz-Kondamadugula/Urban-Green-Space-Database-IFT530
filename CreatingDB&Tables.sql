/*
** Author: Diviz Kondamadugula
** Course: IFT/530
** SQL Server Version: Microsoft SQL Server 2017
** Date Created     Comments
** 04/23/2024       Final Project 91 - Database and Tables Creation
*/

-- Create the new database
CREATE DATABASE FinalProject91;

/*
** Author: Diviz Kondamadugula
** Course: IFT/530
** SQL Server Version: Microsoft SQL Server 2017
** Date Created     Comments
** 04/23/2024       Final Project 91 - Database and Tables Creation
*/

-- Switch to the new database
USE FinalProject91;

DROP TABLE IF EXISTS Parks;
DROP TABLE IF EXISTS Amenities;
DROP TABLE IF EXISTS MaintenanceRecords;
DROP TABLE IF EXISTS UsageStatistics;
DROP TABLE IF EXISTS FloraFauna;
DROP TABLE IF EXISTS EnvironmentalImpact;
DROP TABLE IF EXISTS Events;
DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS VisitorFeedback;
DROP TABLE IF EXISTS Funding;

-- Create table 'Parks'
CREATE TABLE Parks (
    ParkID INT PRIMARY KEY IDENTITY,
    ParkName VARCHAR(255) NOT NULL,
    Location VARCHAR(255) NOT NULL,
    Size DECIMAL(10,2) NOT NULL,
    Type VARCHAR(100) NOT NULL
);

-- Create table 'Amenities'
CREATE TABLE Amenities (
    AmenityID INT PRIMARY KEY IDENTITY,
    ParkID INT NOT NULL,
    AmenityType VARCHAR(100) NOT NULL,
    Description VARCHAR(MAX),
    FOREIGN KEY (ParkID) REFERENCES Parks(ParkID)
);

-- Create table 'MaintenanceRecords'
CREATE TABLE MaintenanceRecords (
    RecordID INT PRIMARY KEY IDENTITY,
    ParkID INT NOT NULL,
    ActivityDate DATE NOT NULL,
    Activity VARCHAR(255) NOT NULL,
    Cost DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (ParkID) REFERENCES Parks(ParkID)
);

-- Create table 'UsageStatistics'
CREATE TABLE UsageStatistics (
    StatID INT PRIMARY KEY IDENTITY,
    ParkID INT NOT NULL,
    RecordDate DATE NOT NULL,
    VisitorCount INT NOT NULL,
    FOREIGN KEY (ParkID) REFERENCES Parks(ParkID)
);

-- Create table 'FloraFauna'
CREATE TABLE FloraFauna (
    SpeciesID INT PRIMARY KEY IDENTITY,
    ParkID INT NOT NULL,
    SpeciesName VARCHAR(255) NOT NULL,
    SpeciesType VARCHAR(100) NOT NULL,
    Status VARCHAR(100) NOT NULL,
    FOREIGN KEY (ParkID) REFERENCES Parks(ParkID)
);

-- Create table 'EnvironmentalImpact'
CREATE TABLE EnvironmentalImpact (
    ImpactID INT PRIMARY KEY IDENTITY,
    ParkID INT NOT NULL,
    ImpactType VARCHAR(255) NOT NULL,
    Measurement VARCHAR(255) NOT NULL,
    FOREIGN KEY (ParkID) REFERENCES Parks(ParkID)
);
GO

-- Create table 'Events'
CREATE TABLE Events (
    EventID INT PRIMARY KEY IDENTITY,
    ParkID INT NOT NULL,
    EventName VARCHAR(255) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    ExpectedAttendance INT,
    FOREIGN KEY (ParkID) REFERENCES Parks(ParkID)
);

-- Create table 'Staff'
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY IDENTITY,
    ParkID INT,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Role VARCHAR(255) NOT NULL,
    FOREIGN KEY (ParkID) REFERENCES Parks(ParkID)
);

-- Create table 'VisitorFeedback'
CREATE TABLE VisitorFeedback (
    FeedbackID INT PRIMARY KEY IDENTITY,
    ParkID INT NOT NULL,
    FeedbackDate DATE NOT NULL,
    Rating DECIMAL(3,1) NOT NULL,
    Comments VARCHAR(MAX),
    FOREIGN KEY (ParkID) REFERENCES Parks(ParkID)
);

-- Create table 'Funding'
CREATE TABLE Funding (
    FundingID INT PRIMARY KEY IDENTITY,
    ParkID INT NOT NULL,
    Source VARCHAR(255) NOT NULL,
    Amount DECIMAL(15,2) NOT NULL,
    FundingDate DATE NOT NULL,
    FOREIGN KEY (ParkID) REFERENCES Parks(ParkID)
);