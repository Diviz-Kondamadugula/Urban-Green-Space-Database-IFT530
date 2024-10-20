/*
** Author: Diviz Kondamadugula
** Course: IFT/530
** SQL Server Version: Microsoft SQL Server 2017
** Date Created     Comments
** 04/24/2024       Final Project 91 - Populating Tables
*/

INSERT INTO Parks (ParkName, Location, Size, Type)
VALUES
('Central Park', 'New York, NY', 843.0, 'Urban'),
('Pisgah National Forest', 'Asheville, NC', 512000.0, 'National'),
('McEuen Park', 'CoeurAlene, ID', 15.6, 'Recreational'),
('Chautauqua Park', 'Boulder, CO', 40.0, 'Conservation Area'),
('Golden Gate Park', 'San Francisco, CA', 1017.0, 'Urban'),
('Arches National Park', 'Moab, UT', 76679.0, 'National'),
('Washington Park', 'Portland, OR', 410.0, 'Urban'),
('Zilker Metropolitan Park', 'Austin, TX', 350.0, 'Urban'),
('Glen Lake Rotary Park', 'Bozeman, MT', 20.0, 'Recreational'),
('Acadia National Park', 'Bangor, ME Area', 49000.0, 'National');
SELECT * FROM Parks;

INSERT INTO Amenities (ParkID, AmenityType, Description)
VALUES
(1, 'Boat Rentals', 'Rowboats available for rent at the Loeb Boathouse.'),
(2, 'Hiking Trails', 'Miles of maintained trails through diverse ecosystems.'),
(3, 'Childrens Play Area', 'Newly renovated play area with safety surfaces.'),
(4, 'Educational Programs', 'Programs on local wildlife and plant species.'),
(5, 'Historical Sites', 'Tours of historic Victorian conservatories.'),
(6, 'Guided Tours', 'Guided geological tours available daily.'),
(7, 'Tennis Courts', 'Public tennis courts available with equipment rental.'),
(8, 'Music Venue', 'Outdoor amphitheater hosting seasonal concerts.'),
(9, 'Basketball Courts', 'Full-size courts open to the public.'),
(10, 'Biking Trails', 'Well-maintained trails available for biking enthusiasts.');
SELECT * FROM Amenities;

INSERT INTO MaintenanceRecords (ParkID, ActivityDate, Activity, Cost)
VALUES
(1, '2023-03-15', 'Statue Cleaning', 450.00),
(2, '2023-03-21', 'Trail Marking Refresh', 300.00),
(3, '2023-03-28', 'Playground Equipment Repair', 500.00),
(4, '2023-04-04', 'Bridge Repair', 1200.00),
(5, '2023-04-11', 'Path Resurfacing', 750.00),
(6, '2023-04-18', 'Vegetation Control', 600.00),
(7, '2023-04-25', 'Lawn Mowing', 250.00),
(8, '2023-05-02', 'Stage Setup for Concert', 900.00),
(9, '2023-05-09', 'Court Repainting', 550.00),
(10, '2023-05-16', 'Signage Replacement', 400.00),
(1, '2023-05-23', 'Mulching Garden Beds', 350.00),
(2, '2023-05-30', 'Trash Can Replacement', 220.00),
(3, '2023-06-06', 'Fence Repair Around Zoo', 700.00),
(4, '2023-06-13', 'Stream Cleanup', 450.00),
(5, '2023-06-20', 'Monument Restoration', 1500.00),
(6, '2023-06-27', 'Trail Erosion Prevention', 1300.00),
(7, '2023-07-04', 'Flower Planting', 300.00),
(8, '2023-07-11', 'Lighting Upgrade for Paths', 1100.00),
(9, '2023-07-18', 'Sprinkler System Maintenance', 480.00),
(10, '2023-07-25', 'Visitor Center Renovation', 2500.00);
SELECT * FROM MaintenanceRecords;


INSERT INTO UsageStatistics (ParkID, RecordDate, VisitorCount)
VALUES
(1, '2023-01-10', 3200),
(2, '2023-01-11', 2500),
(3, '2023-01-12', 1800),
(4, '2023-01-13', 1600),
(5, '2023-01-14', 2100),
(6, '2023-01-15', 1900),
(7, '2023-01-16', 2300),
(8, '2023-01-17', 1200),
(9, '2023-01-18', 1100),
(10, '2023-01-19', 1400),
(1, '2023-01-20', 3000),
(2, '2023-01-21', 2600),
(3, '2023-01-22', 1750),
(4, '2023-01-23', 1650),
(5, '2023-01-24', 2200),
(6, '2023-01-30', 2250),
(6, '2023-01-25', 2000),
(7, '2023-01-26', 2400),
(8, '2023-01-27', 1300),
(9, '2023-01-28', 1050),
(10, '2023-01-29', 1500);
SELECT * from UsageStatistics ;

INSERT INTO FloraFauna (ParkID, SpeciesName, SpeciesType, Status)
VALUES
(1, 'American Elm', 'Flora', 'Stable'),
(2, 'Eastern Hemlock', 'Flora', 'Threatened'),
(3, 'Peregrine Falcon', 'Fauna', 'Recovering'),
(4, 'Bighorn Sheep', 'Fauna', 'Stable'),
(5, 'Coast Redwood', 'Flora', 'Stable'),
(6, 'Pinyon Jay', 'Fauna', 'Vulnerable'),
(7, 'Douglas Fir', 'Flora', 'Stable'),
(8, 'Mexican Free-tailed Bat', 'Fauna', 'Stable'),
(9, 'Grizzly Bear', 'Fauna', 'Threatened'),
(10, 'Atlantic Puffin', 'Fauna', 'Vulnerable');
SELECT * FROM FloraFauna;


INSERT INTO EnvironmentalImpact (ParkID, ImpactType, Measurement)
VALUES
(1, 'Air Quality', 'Good'),
(2, 'Water Pollution', 'Low'),
(3, 'Light Pollution', 'Moderate'),
(4, 'Soil Erosion', 'High'),
(5, 'Visitor Impact', 'Concerning'),
(6, 'Habitat Disruption', 'Low'),
(7, 'Forest Health', 'Good'),
(8, 'Noise Pollution', 'Moderate'),
(9, 'Wildlife Disturbance', 'High'),
(10, 'Plant Degradation', 'Moderate');
SELECT * FROM EnvironmentalImpact;

INSERT INTO Events (ParkID, EventName, StartDate, EndDate, ExpectedAttendance)
VALUES
(1, 'Winter Jazz Fest', '2024-02-05', '2024-02-07', 5000),
(2, 'Forest Heritage Days', '2024-03-15', '2024-03-17', 3000),
(3, 'Summer Play Festival', '2024-06-10', '2024-06-12', 4500),
(4, 'Rock Climbing Rally', '2024-08-21', '2024-08-23', 2500),
(5, 'Shakespeare in the Park', '2024-07-05', '2024-07-07', 7000),
(6, 'Arches Star Party', '2024-09-01', '2024-09-03', 2000),
(7, 'Rose Festival', '2024-04-25', '2024-04-27', 4000),
(8, 'Blues and BBQ', '2024-10-15', '2024-10-17', 3500),
(9, 'Basketball Tournament', '2024-11-20', '2024-11-22', 3000),
(10, 'Wildlife Photography Workshop', '2024-05-18', '2024-05-20', 1500);
SELECT * FROM Events;


INSERT INTO Staff (ParkID, FirstName, LastName, Role)
VALUES
(1, 'Emma', 'Wilson', 'Event Coordinator'),
(2, 'Liam', 'Smith', 'Conservation Officer'),
(3, 'Olivia', 'Johnson', 'Park Ranger'),
(4, 'Noah', 'Brown', 'Maintenance Worker'),
(5, 'Ava', 'Davis', 'Educational Specialist'),
(6, 'William', 'Miller', 'Tour Guide'),
(7, 'Sophia', 'Taylor', 'Horticulturist'),
(8, 'James', 'Anderson', 'Operations Manager'),
(9, 'Isabella', 'Thomas', 'Community Outreach Coordinator'),
(10, 'Lucas', 'Moore', 'Visitor Services Manager');
SELECT * FROM Staff;

INSERT INTO VisitorFeedback (ParkID, FeedbackDate, Rating, Comments)
VALUES
(1, '2023-04-05', 4.7, 'Central Park is always a pleasure to visit, regardless of the season.'),
(2, '2023-04-15', 4.5, 'Pisgah National Forest offers breathtaking views and well-maintained trails.'),
(3, '2023-04-25', 4.0, 'McEuen Park has a great childrens area but it can get quite crowded on weekends.'),
(4, '2023-05-05', 4.8, 'Chautauqua Park is perfect for anyone who loves hiking and nature.'),
(5, '2023-05-15', 3.5, 'Golden Gate Park is huge! Sometimes it feels a bit too packed.'),
(6, '2023-05-25', 4.9, 'Arches National Park is stunning. Highly recommend the guided tours.'),
(7, '2023-06-05', 4.2, 'Washington Parks rose garden is lovely, but parking can be difficult.'),
(8, '2023-06-15', 4.6, 'Zilker Metropolitan Park is a fantastic spot for a picnic and music events.'),
(9, '2023-06-25', 3.8, 'Glen Lake Rotary Park is great for a quick visit but lacks some facilities.'),
(10, '2023-07-05', 4.4, 'Acadia National Park is a must-visit for anyone in Maine, especially for the views.'),
(1, '2023-07-15', 4.3, 'Love the holiday markets in Central Park during the winter.'),
(2, '2023-07-25', 4.1, 'Pisgahs camping sites are good but could use more frequent maintenance checks.'),
(3, '2023-08-05', 4.6, 'Kids love the splash pad at McEuen Park during the summer!'),
(4, '2023-08-15', 5.0, 'Chautauqua never disappoints with its peace and beauty.'),
(5, '2023-08-25', 4.2, 'Golden Gate has diverse attractions, but better signage would help.'),
(6, '2023-09-05', 4.7, 'The natural arches at Arches National Park are awe-inspiring.'),
(7, '2023-09-15', 4.5, 'The Shakespeare in the Park event at Washington Park is a highlight of the summer.'),
(8, '2023-09-25', 4.0, 'Zilkers water activities are fun but often too crowded.'),
(9, '2023-10-05', 4.3, 'Glen Lake Rotary Park is serene in the fall, perfect for a day out.'),
(10, '2023-10-15', 4.8, 'The fall colors in Acadia are simply spectacular.');
SELECT * FROM VisitorFeedback ;

INSERT INTO Funding (ParkID, Source, Amount, FundingDate)
VALUES
(1, 'City Grants', 500000.00, '2023-01-01'),
(2, 'Federal Aid', 750000.00, '2023-01-15'),
(3, 'Private Donations', 200000.00, '2023-02-01'),
(4, 'State Funding', 300000.00, '2023-02-15'),
(5, 'Fundraising Events', 450000.00, '2023-03-01'),
(6, 'Corporate Sponsorships', 600000.00, '2023-03-15'),
(7, 'Non-Profit Grants', 350000.00, '2023-04-01'),
(8, 'Local Business Contributions', 250000.00, '2023-04-15'),
(9, 'Private Donations', 150000.00, '2023-05-01'),
(10, 'Federal Aid', 800000.00, '2023-05-15');
SELECT * FROM Funding;