-- Logical Operators

SELECT * FROM datatyp;

select first_name ,age,salary  FROM datatyp
where age >=25 and salary >=50000;

select first_name ,age,salary  FROM datatyp
where age >=55 or salary >=50000;

select first_name ,department  FROM datatyp
where not (department ='IT');


-- 20 Logical Operator Practice Questions

-- Find employees who work in the IT department AND have salary greater than 55,000.
select first_name ,department,salary  FROM datatyp
where department='IT' and salary > 55000;
-- List employees who are in the HR department OR have age less than 24.
select first_name ,department,age FROM datatyp
where department='HR' or age < 24;
-- Show employees who are NOT in the Finance department.
select first_name ,department FROM datatyp
where not( department='finace');
-- Retrieve employees whose salary is greater than 50,000 AND age is less than 26.
select first_name ,salary,age  FROM datatyp
where salary > 50000 and age < 26;
-- Display employees who are in Sales OR Marketing department AND age greater than 23.
select first_name ,department,age  FROM datatyp
where   (department= 'sales'or department= 'marketing') and age > 23;
-- Find employees whose email ends with 'gmail.com' AND department is NOT IT.
select first_name ,email,department FROM datatyp
where email like '%gmail.com' and department <> 'IT';
 
-- Show employees who joined before 2022 OR salary less than 48,000.
SELECT first_name, last_name, joing_date, salary FROM datatyp
WHERE joing_date < '2022-01-01' OR salary < 48000;
-- Retrieve employees who are NOT (in HR OR in Admin department).
select first_name,department from datatyp
where not (department='HR' or department='Admin');
-- List employees who are in IT AND (salary > 57,000 OR age = 24).
select first_name,department,salary,age from datatyp
where department='|IT' and (salary >57000 or age=24);
-- Find employees who are NOT in Marketing AND salary between 50,000 and 60,000.
select first_name,department ,salary from datatyp
where department <> 'Marketing' AND salary BETWEEN 50000 AND 60000;
-- Show employees who are in Finance OR HR AND joined before 2022-01-01.
SELECT first_name, last_name, department, joing_date FROM datatyp
WHERE (department = 'Finance' OR department = 'HR') AND joing_date < '2022-01-01';

-- Find employees whose age < 25 AND salary > 55,000.
SELECT first_name, last_name, age, salary
FROM datatyp
WHERE age < 25 AND salary > 55000;

-- Retrieve employees who are NOT in Sales OR age > 26.
SELECT first_name, last_name, department, age
FROM datatyp
WHERE department <> 'Sales' OR age > 26;

-- List employees whose department is IT OR Marketing AND salary < 55,000.
SELECT first_name, last_name, department, salary
FROM datatyp
WHERE (department = 'IT' OR department = 'Marketing') AND salary < 55000;

-- Find employees who are in Admin AND salary < 50000 OR age > 27.
SELECT first_name, last_name, department, salary, age
FROM datatyp
WHERE (department = 'Admin' AND salary < 50000) OR age > 27;

-- Show employees who are NOT (department = 'HR' OR department = 'Finance').
SELECT first_name, last_name, department
FROM datatyp
WHERE NOT (department = 'HR' OR department = 'Finance');

-- Retrieve employees who are in IT OR Finance AND salary >= 60,000.
SELECT first_name, last_name, department, salary
FROM datatyp
WHERE (department = 'IT' OR department = 'Finance') AND salary >= 60000;

-- Find employees who are NOT in IT AND (age < 25 OR salary > 60000).
SELECT first_name, last_name, department, age, salary
FROM datatyp
WHERE department <> 'IT' AND (age < 25 OR salary > 60000);

-- Show employees who joined after 2022-01-01 AND are in Marketing OR HR.
SELECT first_name, last_name, department, joing_date
FROM datatyp
WHERE joing_date > '2022-01-01' AND (department = 'Marketing' OR department = 'HR');

-- List employees whose email contains 'yahoo' AND (department = 'Finance' OR salary < 50,000).

SELECT first_name, last_name, email, department, salary
FROM datatyp
WHERE email LIKE '%yahoo%' AND (department = 'Finance' OR salary < 50000);
