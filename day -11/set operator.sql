CREATE TABLE students_2023 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course VARCHAR(50)
);

INSERT INTO students_2023 (student_id, student_name, course) VALUES
(1, 'Aarav Sharma', 'Computer Science'),
(2, 'Ishita Verma', 'Mechanical Engineering'),
(3, 'Kabir Patel', 'Electronics'),
(4, 'Ananya Desai', 'Civil Engineering'),
(5, 'Rahul Gupta', 'Computer Science');

select * from students_2023;

CREATE TABLE students_2024 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course VARCHAR(50)
);

INSERT INTO students_2024 (student_id, student_name, course) VALUES
(3, 'Kabir Patel', 'Electronics'),   -- Same as students_2023
(4, 'Ananya Desai', 'Civil Engineering'), -- Same as students_2023
(6, 'Meera Rao', 'Computer Science'),
(7, 'Vikram Singh', 'Mathematics'),
(8, 'Sanya Kapoor', 'Physics');


SELECT * FROM students_2024;

-- UNION ALL - Combines results, keeps duplicates
select student_name,course from students_2023
union
select student_name,course from students_2024;


-- UNION ALL - Combines results, keeps duplicates
select student_name,course from students_2023
union all
select student_name,course from students_2024;

-- INTERSECT - Returns common results in both tables
select student_name,course from students_2023
intersect
select student_name,course from students_2024;

-- EXCEPT  -- Returns results in the first table but not in the second
select student_name,course from students_2023
except
select student_name,course from students_2024;


-- Practice Questions (Set Operators)

-- 1. UNION

-- List all student names from both tables (without duplicates).
select student_name from students_2023
union
select student_name from students_2024;


-- Retrieve the unique list of all courses from both tables.
select student_name ,course from students_2023
union
select student_name,course from students_2024;

-- 2. UNION ALL

-- List all student names from both tables (including duplicates).
select student_name from students_2023
union all
select student_name from students_2024;

-- Retrieve all courses from both tables (including duplicates).
select student_name ,course from students_2023
union all
select student_name,course from students_2024;

-- 3. INTERSECT


-- Find the students who are present in both 2023 and 2024 tables.
SELECT student_name FROM students_2023
INTERSECT
SELECT student_name FROM students_2024

-- Find the courses that are common in both tables.
SELECT student_name,course FROM students_2023
INTERSECT
SELECT student_name,course FROM students_2024

-- 4. EXCEPT (or MINUS in Oracle)

-- Find the students who are in 2023 but not in 2024.
SELECT student_name FROM students_2023
except
SELECT student_name FROM students_2024


-- Find the students who are in 2024 but not in 2023.
SELECT student_name FROM students_2024
INTERSECT
SELECT student_name FROM students_2023


-- Find the courses that exist in 2023 but not in 2024.
SELECT course FROM students_2023
EXCEPT
SELECT course FROM students_2024;
-- Find the courses that exist in 2024 but not in 2023.
SELECT course FROM students_2024
EXCEPT
SELECT course FROM students_2023;
