CREATE TABLE users3 (
    employee_id INT PRIMARY KEY,
     name VARCHAR(50) NOT NULL,
     position VARCHAR(100) NOT NULL,
     department varchar(50),
     hire_date date,
	 salary numeric(19,2)
);

SELECT * FROM users3;

INSERT INTO users3 (employee_id ,name,position,department,hire_date,salary)
VALUES
(101, 'DHIRAJ', 'Software Engineer', 'IT', '2021-05-15', 75000),
(102, 'Niraj', 'Data Analyst', 'Business Intelligence', '2020-08-10', 65000),
(103, 'Ujjwal', 'HR Manager', 'Human Resources', '2019-03-01', 82000),
(104, 'Shashi', 'Project Manager', 'Operations', '2022-01-20', 90000),
(105, 'Prem', 'Marketing Specialist', 'Marketing', '2023-07-05', 60000);

-- column ka liye delate command use karte hai
DELETE FROM users3
WHERE employee_id =105;


-- row ke liye alter ka command ka use hota hai
ALTER TABLE users3
DROP COLUMN salary;

