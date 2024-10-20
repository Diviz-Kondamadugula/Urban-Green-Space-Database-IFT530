/*
** Author: Diviz Kondamadugula
** Course: IFT/530
** SQL Server Version: Microsoft SQL Server 2017
** Date Created     Comments
** 04/24/2024       Final Project 91 - Cursor
*/

USE FinalProject91;

-- Declaring the cursor
DECLARE ParkCursor CURSOR FOR
    SELECT ParkName, Size
    FROM Parks
    WHERE Size > 1000;  -- Threshold for large parks in acres

-- Variables to hold data fetched from the cursor
DECLARE @ParkName VARCHAR(255);
DECLARE @ParkSize FLOAT;

-- Opening the cursor
OPEN ParkCursor;

-- Fetching the first row
FETCH NEXT FROM ParkCursor INTO @ParkName, @ParkSize;

-- Looping through all rows
WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Large Park: ' + @ParkName + ' with size ' + CAST(@ParkSize AS VARCHAR) + ' acres';
    
    -- Fetch the next row
    FETCH NEXT FROM ParkCursor INTO @ParkName, @ParkSize;
END;

-- Closing the cursor
CLOSE ParkCursor;

-- Deallocating the cursor
DEALLOCATE ParkCursor;
