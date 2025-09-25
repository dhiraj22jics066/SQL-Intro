-- Between Like and In Operator

select * from datatyp;

 -- Retrieve employees whose salary is between 40,000 and 60,000. - Use BETWEEN Operators
 select first_name,salary from datatyp
 where salary between 40000 and 60000 ;
 
-- Find employees whose email addresses end with gmail.com - Use LIKE Operators
select first_name,email from datatyp
where email like '%gmail.com';

-- Retrieve employees who belong to either the 'Finance' or 'Marketing' departments-- Use IN Operator
 select first_name,last_name, department from datatyp
 where department in ('Finance','Marketing');

 
-- Practice Questions (BETWEEN, LIKE, IN)
-- 👉 Using BETWEEN

-- Find employees whose salary is between 50,000 and 60,000.
select first_name, salary from datatyp
where salary between 50000 and 60000;
-- List employees whose age is between 23 and 26.
select first_name, age from datatyp
where age between 23 and 26;

-- Show employees who joined between '2021-01-01' and '2022-12-31'.
select first_name, joing_date from datatyp
where joing_date between '2021-01-01' and '2022-12-31';
-- Retrieve employees whose salary is NOT between 45,000 and 55,000.
select first_name, salary from datatyp
where salary not between 45000 and 55000 ;
-- Find employees whose joining date is between 2020 and 2021.
SELECT first_name, last_name, joing_date FROM datatyp
WHERE joing_date BETWEEN '2020-01-01' AND '2021-12-31';

-- 👉 Using LIKE

-- Find employees whose first name starts with 'A'.
select first_name from datatyp
where first_name like 'A%';
-- Show employees whose last name ends with 'a'.
select first_name from datatyp
where first_name like '%a';
-- Retrieve employees whose email contains 'gmail'.
select first_name,email  from datatyp
where email like '%gmail';
-- Find employees whose first name is 5 characters long.
-- (Hint: use LIKE '_____' with underscores)
SELECT first_name, last_name FROM datatyp
WHERE first_name LIKE '_____';

-- Show employees whose department name contains the letter 'a'.
SELECT first_name, last_name, department
FROM datatyp
WHERE department LIKE '%a%';


-- 👉 Using IN

-- Find employees who work in HR or Finance.
select first_name, department from datatyp
where department in ('HR', 'Finace');

-- List employees whose age is in (22, 24, 28).
select first_name, age from datatyp
where age in (22,24,28);
-- Show employees whose salary is in (45000, 51000, 60000).
select first_name,salary from datatyp
where salary in (45000,51000,60000);
-- Retrieve employees who joined in the years 2019, 2020, or 2023.
SELECT first_name, last_name, salary
FROM datatyp
WHERE salary IN (45000, 51000, 60000);

-- Find employees whose department is in ('IT', 'Marketing', 'Sales').
SELECT first_name, last_name, department
FROM datatyp
where department in  ('IT', 'Marketing', 'Sales');


-- 👉 Combining them

-- Show employees whose salary is between 50,000 and 60,000 AND department is in ('IT','Finance').
SELECT first_name, last_name, salary,department FROM datatyp
WHERE salary BETWEEN 50000 AND 60000 AND department IN ('IT','Finance');
-- Find employees whose first name starts with 'P' OR last name IN ('Gupta','Iyer').
SELECT first_name, last_name,last_name FROM datatyp
where first_name like 'P%' or last_name  in  ('Gupta','Iyer');
-- List employees whose email ends with 'yahoo.com' AND age between 25 and 30.
SELECT first_name, last_name, email, age
FROM datatyp
WHERE email LIKE '%yahoo.com' AND age BETWEEN 25 AND 30;

-- Retrieve employees whose department is NOT IN ('HR','Admin') AND salary > 50,000.
SELECT first_name, last_name, department, salary
FROM datatyp
WHERE department NOT IN ('HR','Admin') AND salary > 50000;

-- Find employees whose joining date is between '2022-01-01' and '2023-12-31' AN
-- email LIKE '%gmail.com'.
SELECT first_name, last_name, joing_date, email
FROM datatyp
WHERE joing_date BETWEEN '2022-01-01' AND '2023-12-31'
  AND email LIKE '%gmail.com';

