/*
** Author: Diviz Kondamadugula
** Course: IFT/530
** SQL Server Version: Microsoft SQL Server 2017
** Date Created     Comments
** 04/24/2024       Final Project 91 - Stored Procedure and User Defined Function
*/

--- STORED PROCEDURE ---
USE FinalProject91;

GO
-- Drops the procedure if it already exists
IF OBJECT_ID('GetParkDetails', 'P') IS NOT NULL
    DROP PROCEDURE GetParkDetails;
GO

-- Creates the stored procedure
CREATE PROCEDURE GetParkDetails
    @ParkID INT
AS
BEGIN
    SELECT p.ParkName, p.Location, p.Size, p.Type,
           a.AmenityType, a.Description,
           m.ActivityDate, m.Activity, m.Cost
    FROM Parks p
    JOIN Amenities a ON p.ParkID = a.ParkID
    JOIN MaintenanceRecords m ON p.ParkID = m.ParkID
    WHERE p.ParkID = @ParkID;
END;
GO

-- Testing Stored Procedure
EXEC GetParkDetails @ParkID = 4;

/*
** Author: Diviz Kondamadugula
** Course: IFT/530
** SQL Server Version: Microsoft SQL Server 2017
** Date Created     Comments
** 04/24/2024       Final Project 91 - Stored Procedure and User Defined Function
*/ 

--- USER DEFINED FUNCTION ------
USE FinalProject91;
GO
-- Drops the function if it exists
IF OBJECT_ID('fn_AverageVisitors', 'FN') IS NOT NULL
    DROP FUNCTION fn_AverageVisitors;
GO
-- Creates the function
CREATE FUNCTION fn_AverageVisitors
    (@ParkID INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @AvgVisitors DECIMAL(10,2);

    SELECT @AvgVisitors = AVG(VisitorCount)
    FROM UsageStatistics
    WHERE ParkID = @ParkID;

    RETURN @AvgVisitors;
END;
GO

-- Testing User Defined Function
SELECT dbo.fn_AverageVisitors(2) AS AverageVisitors;


/*
** Author: Diviz Kondamadugula
** Course: IFT/530
** SQL Server Version: Microsoft SQL Server 2017
** Date Created     Comments
** 04/24/2024       Final Project 91 - Stored Procedure and User Defined Function
*/ 

--- Cleaning Database - Dropping both Stored Procedure and User Defined Function -----
IF OBJECT_ID('GetParkDetails', 'P') IS NOT NULL
    DROP PROCEDURE GetParkDetails;

IF OBJECT_ID('fn_AverageVisitors', 'FN') IS NOT NULL
    DROP FUNCTION fn_AverageVisitors;