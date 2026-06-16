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
-- Day 3 | 
-- Protocol 9: SQL Student Marks Analyzer
-- Task 1: Create Tables and Insert Data
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    roll_no INT
);

CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(30),
    score INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO students (student_id, name, roll_no) VALUES
(1, 'Tanvi Dalvi', 101),
(2, 'Rahul Sharma', 102),
(3, 'Priya Patel', 103),
(4, 'Amit Kumar', 104);

INSERT INTO marks (mark_id, student_id, subject, score) VALUES
(1, 1, 'SQL', 95), (2, 1, 'Python', 88), (3, 2, 'SQL', 76),
(4, 2, 'Python', 91), (5, 3, 'SQL', 98), (6, 3, 'Python', 94),
(7, 4, 'SQL', 65), (8, 4, 'Python', 70);

-- Task 2: Find the College Topper with Subject and Score
SELECT 
    s.name AS student_name, 
    m.subject, 
    m.score 
FROM students s 
JOIN marks m ON s.student_id = m.student_id 
WHERE m.score = (SELECT MAX(score) FROM marks);

-- Task 3: Calculate Average Marks and Rank Students
SELECT 
    s.name AS student_name, 
    ROUND(AVG(m.score), 2) AS average_marks 
FROM students s 
JOIN marks m ON s.student_id = m.student_id 
GROUP BY s.student_id, s.name 
ORDER BY average_marks DESC;

-- Task 4: Filter Students with SQL Score Greater Than 80
SELECT 
    s.name AS student_name, 
    m.score AS sql_marks
FROM students s 
JOIN marks m ON s.student_id = m.student_id 
WHERE m.subject = 'SQL' AND m.score > 80
ORDER BY sql_marks DESC;

-
