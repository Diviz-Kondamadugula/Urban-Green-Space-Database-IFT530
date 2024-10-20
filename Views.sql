/*
** Author: Diviz Kondamadugula
** Course: IFT/530
** SQL Server Version: Microsoft SQL Server 2017
** Date Created     Comments
** 04/24/2024       Final Project 91 - Queries as Views
*/

-- Query 1 - Overview of Park Maintenance

CREATE VIEW ParkMaintenanceOverview AS
SELECT 
    p.ParkName,
    p.Location,
    p.Size,
    p.Type,
    m.ActivityDate,
    m.Activity,
    m.Cost
FROM 
    Parks p
JOIN 
    MaintenanceRecords m ON p.ParkID = m.ParkID
WHERE 
    m.ActivityDate >= '2023-01-01';

GO

-- Test the Overview of Park Maintenance
SELECT * FROM ParkMaintenanceOverview;

/*
** Author: Diviz Kondamadugula
** Course: IFT/530
** SQL Server Version: Microsoft SQL Server 2017
** Date Created     Comments
** 04/24/2024       Final Project 91 - Queries as Views
*/

-- Query 2 - Statistics On Park Visitation
CREATE VIEW StatisticsOnParkVisitation AS
SELECT 
    p.ParkName,
    p.Type,
    u.RecordDate,
    u.VisitorCount
FROM 
    Parks p
JOIN 
    UsageStatistics u ON p.ParkID = u.ParkID
WHERE 
    u.RecordDate BETWEEN '2023-01-01' AND '2023-12-31';
GO

-- Test the Statistics on Park Visitation
SELECT * FROM StatisticsOnParkVisitation;

/*
** Author: Diviz Kondamadugula
** Course: IFT/530
** SQL Server Version: Microsoft SQL Server 2017
** Date Created     Comments
** 04/24/2024       Final Project 91 - Queries as Views
*/

-- Query 3 - Feedback And Funding For Parks
CREATE VIEW FeedbackAndFundingForParks AS
SELECT 
    p.ParkName,
    f.Source,
    f.Amount,
    f.FundingDate,
    v.FeedbackDate,
    v.Rating,
    v.Comments
FROM 
    Parks p
JOIN 
    Funding f ON p.ParkID = f.ParkID
JOIN 
    VisitorFeedback v ON p.ParkID = v.ParkID
WHERE 
    f.FundingDate > '2022-12-31' AND v.FeedbackDate > '2022-12-31';
GO

-- Test the Feedback and Funding for Parks
SELECT * FROM FeedbackAndFundingForParks;