CREATE TABLE datatyp(
      emoloyeed_id serial PRIMARY KEY,
	  first_name varchar(100),
	  last_name varchar(100),
	  email varchar(100),
	  department varchar(100),
	  salary numeric,
	  joing_date DATE,
	  age int
);


INSERT INTO datatyp(first_name,last_name,email,department,salary,joing_date,age)
VALUES 
('Aarav', 'Sharma', 'aarav.sharma@gmail.com', 'IT', 55000, '2022-05-10', 25),
('Ishita', 'Verma', 'ishita.verma@gmail.com', 'HR', 48000, '2021-08-14', 24),
('Rohan', 'Iyer', 'rohan.iyer@yahoo.com', 'Finance', 60000, '2020-11-20', 27),
('Priya', 'Nair', 'priya.nair@gmail.com', 'Marketing', 52000, '2023-01-05', 23),
('Kabir', 'Mehta', 'kabir.mehta@hotmail.com', 'Sales', 51000, '2019-03-12', 26),
('Neha', 'Gupta', 'neha.gupta@gmail.com', 'Admin', 45000, '2021-07-19', 28),
('Arjun', 'Patel', 'arjun.patel@gmail.com', 'IT', 58000, '2022-10-02', 24),
('Simran', 'Kaur', 'simran.kaur@yahoo.com', 'HR', 47000, '2020-09-30', 25),
('Vikram', 'Reddy', 'vikram.reddy@gmail.com', 'Finance', 62000, '2023-04-18', 29),
('Ananya', 'Mishra', 'ananya.mishra@gmail.com', 'Marketing', 50000, '2022-06-25', 22);

-- Retrieve the first_name, salary, and calculate a 10% bonus on the salary.
SELECT first_name,salary,
      (salary*0.1) AS bouns
FROM datatyp;     

-- Calculate the Annual Salary and Salary Increment by 5% - show the monthly new salary as well
SELECT first_name, last_name, salary, 
       (salary * 12) AS annual_salary, 
       (salary * 0.05) AS increment_amount, 
       (salary * 1.05) AS new_salary, 
       (salary + salary*0.05) as new_salary2
FROM datatyp;

-- Practice Questions on Arithmetic Operato

-- 1. Addition (+)

-- Show each employee’s name and their salary after adding ₹5,000 bonus.
SELECT first_name,salary,last_name,salary, (salary+5000) AS bouns
FROM datatyp;           
-- Display employee name, department, and salary + age (just to practice addition).
SELECT first_name, last_name, salary, age, (salary + age) AS salary_plus_age
FROM datatyp;
-- Find the total salary of all employees.
SELECT salary FROM datatyp;

SELECT SUM(salary) AS total_salary
FROM datatyp;



-- 2. Subtraction (-)

-- Show employee name and difference between salary and 50,000.
SELECT first_name,last_name,salary, (salary-50000) AS difference FROM datatyp;

-- Find employees whose salary is at least ₹5,000 greater than Priya Nair’s salary.
SELECT first_name, last_name, salary
FROM datatyp
WHERE salary >= (SELECT salary FROM datatyp WHERE first_name = 'Priya' AND last_name = 'Nair') + 5000;

-- Calculate how many years each employee has worked till now ( YEAR(CURDATE()) - YEAR(joing_date) ).
SELECT first_name, last_name,
       (YEAR(CURDATE()) - YEAR(joing_date)) AS years_worked
FROM datatyp;


-- 3. Multiplication (*)

-- Show employee name and annual salary (salary * 12).
select first_name,last_name,salary ,(salary*12)AS annual_salary FROM datatyp;

-- Display employee name and salary after 10% hike (salary * 1.10).
select first_name,last_name,salary ,(salary*1.10) AS hike_salary FROM datatyp; 
-- Calculate department-wise total annual salary payout.
select department,salary ,(salary*12) AS total_annual_salary FROM datatyp;

SELECT department, SUM(salary * 12) AS total_annual_salary
FROM datatyp
GROUP BY department;

-- 4. Division (/)

-- Show employee name and monthly income (salary / 12).
select first_name,last_name salary,(salary/12) AS momthly_income FROM datatyp;
-- Display employee name, salary, and salary divided by age.
select first_name,last_name ,salary ,(salary/age) AS divided_age FROM datatyp;
-- Calculate average salary per department (SUM(salary)/COUNT(*)).
SELECT department, (SUM(salary) / COUNT(*)) AS avg_salary
FROM datatyp
GROUP BY department;


-- 5. Modulus (%)

-- Find employees whose age is even (age % 2 = 0).
SELECT first_name, last_name, age
FROM datatyp
WHERE age % 2 = 0;

-- Show employees whose salary is divisible by 5,000 (salary % 5000 = 0).
SELECT first_name,last_name,salary
FROM datatyp
WHERE salary % 5000 =0;
-- Display employees where joining year % 2 = 0 (joined in even years).
SELECT first_name, last_name, YEAR(joing_date) AS joining_year
FROM datatyp
WHERE YEAR(joing_date) % 2 = 0;


-- 6. Mixed Arithmetic

-- Show employee name and their salary after 12% tax deduction (salary - (salary * 0.12)).
select first_name,last_name,salary ,(salary-(salary*0.12)) AS tax_deducation FROM datatyp;
-- Calculate total company expense per year ( SUM(salary * 12) ).
SELECT SUM(salary * 12) AS total_expense_per_year
FROM datatyp;
-- Find the difference between highest salary and lowest salary.
SELECT (MAX(salary) - MIN(salary)) AS salary_difference
FROM datatyp;
-- Show employee name and salary + (age * 1000).
SELECT first_name, last_name, (salary + (age * 1000)) AS salary_plus_age_bonus
FROM datatyp;

-- Find remainder when total salary of all employees is divided by 1,00,000.
SELECT (SUM(salary) % 100000) AS remainder
FROM datatyp;

SELECT * FROM datatyp;