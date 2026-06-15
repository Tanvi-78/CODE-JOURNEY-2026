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
-- Day 2 | Mission: ORDER BY Master

-- Protocol 5: Sort by Age - Youngest to Oldest
SELECT Name, Age, City 
FROM Students 
ORDER BY Age ASC;

-- Protocol 6: Sort by Marks - Highest First | Toppers List
SELECT Name, Marks 
FROM Students 
ORDER BY Marks DESC;

-- Protocol 7: Top 3 Oldest Students | LIMIT is your friend
SELECT Name, Age 
FROM Students 
ORDER BY Age DESC 
LIMIT 3;

-- Protocol 8: Panvel Students sorted by Name | WHERE + ORDER BY
SELECT Name, Age 
FROM Students 
WHERE City = 'Panvel' 
ORDER BY Name ASC;
