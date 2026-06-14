-- Genesis Query Protocol : Day 1 
-- coder : Tanvi-78 | Mission :SQL Wizard


--Protocol 1:Initiate Full Data Scan
SELECT * FROM Students;

--Protocol 2: Extract Key Identifiers Only
SELECT Name, City FROM Students;

--Protocol 3:Filter By Location - Panvel Sector
SELECT * FROM Students WHERE City = 'Panvel';

--Protocol 4: Filter by age threshold
SELECT Name,Age FROM Students WHERE Age>20;
