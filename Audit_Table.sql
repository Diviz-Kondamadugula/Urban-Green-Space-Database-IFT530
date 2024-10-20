/*
** Author: Diviz Kondamadugula
** Course: IFT/530
** SQL Server Version: Microsoft SQL Server 2017
** Date Created     Comments
** 04/24/2024       Final Project 91 - Audit Table
*/

CREATE TABLE ParksAudit (
    AuditID INT PRIMARY KEY IDENTITY,
    ParkID INT,
    ParkName VARCHAR(255),
    Location VARCHAR(255),
    Size DECIMAL(10,2),
    Type VARCHAR(100),
    OperationType CHAR(1), -- 'I' for Insert, 'U' for Update, 'D' for Delete
    ChangeDateTime DATETIME DEFAULT GETDATE()
);

GO

-- Trigger for INSERT
CREATE TRIGGER trg_Parks_Insert ON Parks
AFTER INSERT
AS
BEGIN
    INSERT INTO ParksAudit (ParkID, ParkName, Location, Size, Type, OperationType)
    SELECT ParkID, ParkName, Location, Size, Type, 'I'
    FROM inserted;
END;

GO

-- Trigger for UPDATE
CREATE TRIGGER trg_Parks_Update ON Parks
AFTER UPDATE
AS
BEGIN
    INSERT INTO ParksAudit (ParkID, ParkName, Location, Size, Type, OperationType)
    SELECT ParkID, ParkName, Location, Size, Type, 'U'
    FROM inserted;
END;

GO

-- Trigger for DELETE
CREATE TRIGGER trg_Parks_Delete ON Parks
AFTER DELETE
AS
BEGIN
    INSERT INTO ParksAudit (ParkID, ParkName, Location, Size, Type, OperationType)
    SELECT ParkID, ParkName, Location, Size, Type, 'D'
    FROM deleted;
END;
GO


-- Testing the Triggers

-- Insert a new park
INSERT INTO Parks (ParkName, Location, Size, Type)
VALUES ('Test Park', 'Test Location', 100.00, 'Urban');

-- Update the park
UPDATE Parks
SET ParkName = 'Updated Test Park'
WHERE ParkName = 'Test Park';

-- Delete the park
DELETE FROM Parks
WHERE ParkName = 'Updated Test Park';

-- Select all records from the audit table
SELECT * FROM ParksAudit;