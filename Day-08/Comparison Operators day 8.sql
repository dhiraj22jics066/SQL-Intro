-- Comparison Operators

SELECT * FROM datatyp;


select * from datatyp
where age=25;

select  first_name,age FROM datatyp
where age != 23;

select  first_name,salary FROM datatyp
where salary >= 50000;



-- Practice Questions (using your datatyp table)

-- Find employees whose salary is greater than 55,000.
-- *(Operator: >)
select first_name,salary FROM datatyp
where salary >= 55000;

-- Show employees whose age is less than or equal to 24.
-- (Operator: <=)
select first_name ,age FROM datatyp
where age <= 24;

-- Retrieve employees who do not belong to the IT department.
-- (Operator: != or <>)
select First_name, department FROM datatyp
where department !='IT';

select First_name, department FROM datatyp
where department<> 'IT';


-- List employees whose salary is between 50,000 and 60,000.
-- (Operator: BETWEEN)
select first_name,salary FROM datatyp
where salary BETWEEN 50000 and 600000;
-- Find employees whose first name starts with 'A'.
-- (Operator: LIKE 'A%')
SELECT first_name, last_name FROM datatyp
WHERE first_name LIKE 'A%';

-- Show employees whose email ends with 'gmail.com'.
-- (Operator: LIKE '%gmail.com')
SELECT first_name, last_name, email FROM datatyp
WHERE email LIKE '%gmail.com';

-- Retrieve employees who joined the company before 2022-01-01.
-- (Operator: < with dates)
SELECT first_name, last_name, joing_date FROM datatyp
WHERE joing_date < '2022-01-01';

-- Display employees whose age is not between 23 and 27.
-- (Operator: NOT BETWEEN)
SELECT first_name, last_name, age
FROM datatyp
WHERE age NOT BETWEEN 23 AND 27;
-- Find employees who belong to either 'HR' or 'Finance' department.
-- (Operator: IN)
SELECT first_name, last_name, department FROM datatyp
WHERE department IN ('HR', 'Finance');

-- List employees whose salary is greater than 55,000 and department is Finance.
-- (Operators: >, AND, =)
SELECT first_name, last_name, department, salary FROM datatyp
WHERE salary > 55000 AND department = 'Finance';

