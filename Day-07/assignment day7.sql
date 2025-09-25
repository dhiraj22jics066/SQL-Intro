CREATE TABLE ASSIGNMENT1 (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
);

INSERT  INTO ASSIGNMENT1 (first_name, last_name, department, salary, joining_date, age) VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);

--Q1: Retrieve all employees’ first_name and their departments.

SELECT first_name,department FROM ASSIGNMENT1;

-- Update the salary of all employees in the 'IT' department by increasing it by 10%.

UPDATE ASSIGNMENT1
SET salary=salary+ (salary*0.01)
WHERE department='IT';

-- Delete all employees who are older than 34 years.
DELETE FROM ASSIGNMENT1
WHERE age>34;

-- Add a new column `email` to the `employees` table.

ALTER TABLE ASSIGNMENT1
ADD COLUMN email VARCHAR(100);

--Q5: Rename the `department` column to `dept_name`.
ALTER TABLE ASSIGNMENT1
RENAME COLUMN department TO dept_name;


INSERT INTO ASSIGNMENT1(first_name, last_name, dept_name, salary, joining_date, age)
VALUES('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30);


SELECT*FROM ASSIGNMENT1;