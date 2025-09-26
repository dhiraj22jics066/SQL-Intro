-- IS NULL Operator, ORDER BY Operator, LIMIT Operator & DISTINCT Operator.

select * from datatyp;

-- Find employees where the email column is NULL (if applicable).
select first_name,last_name ,email from datatyp
where email is null ;

-- List employees sorted by salary in descending order.
SELECT first_name, last_name, salary FROM datatyp
ORDER BY salary DESC;

SELECT first_name, last_name, salary
FROM datatyp
ORDER BY salary asc;

-- Retrieve the top 5 highest-paid employees.
SELECT first_name, last_name, salary FROM datatyp
ORDER BY salary DESC
limit 5;

Questions (Practice Set)

-- 1. IS NULL Operator

-- Find all employees where the email is NULL.
select email FROM datatyp
where email is null;

-- Show employees whose department is not assigned (NULL).
select * from datatyp
where department is null;

-- List employees whose joining date is missing (NULL).
SELECT * FROM datatyp
WHERE joing_date IS NULL;

-- 2. ORDER BY Operator


-- List all employees ordered by salary (ascending).
select first_name, salary from datatyp
order by salary asc;
-- List all employees ordered by joining date (newest first).
select first_name joining_date from datatyp
order by joining_date desc;
-- Display employees in alphabetical order of last_name.
SELECT * FROM datatyp
ORDER BY salary ASC;

-- Multiple columns पर sorting:

SELECT first_name, department, salary
FROM datatyp
ORDER BY department ASC, salary DESC;

-- 3. LIMIT Operator

-- Show only the top 3 highest paid employees.
SELECT * FROM datatyp
ORDER BY salary DESC
LIMIT 3;


-- Display only the first 5 employees ordered by joining date.
SELECT * FROM datatyp
ORDER BY joing_date asc
LIMIT 5;

SELECT * FROM datatyp
ORDER BY joing_date ASC
LIMIT 5;
-- Show only 2 youngest employees.
select *from datatyp
order by age asc
limit 2;

-- 4. DISTINCT Operator

-- Find the distinct departments from the employee table.
SELECT DISTINCT department FROM datatyp;

-- Show the unique job salaries assigned to employees.
SELECT DISTINCT salary FROM datatyp;
-- Display distinct first names of employees.
SELECT DISTINCT first_name FROM datatyp;
