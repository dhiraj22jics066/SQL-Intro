CREATE TABLE uptDatt (
    employee_id INT PRIMARY KEY,
     name VARCHAR(50) NOT NULL,
     position VARCHAR(100) NOT NULL,
     department varchar(50),
	 age int,
	
	 email varchar(50),
     hire_date date,
	 salary numeric(19,2)
);



INSERT INTO uptDAtt (employee_id ,name,position,department, age,email,hire_date,salary)
VALUES
(101, 'DHIRAJ', 'Software Engineer', 'IT',23,,'dhiraj@gmail.com', '2021-05-15', 75000),
(102, 'Niraj', 'Data Analyst', 'Business Intelligence',24,'niraj@gmail.com' ,'2020-08-10', 65000),
(103, 'Ujjwal', 'HR Manager', 'Human Resources',30,'ujjwal@gmail.com' ,'2019-03-01', 82000),
(104, 'Shashi', 'Project Manager', 'Operations', 29,'shashi@gmail.com','2022-01-20',90000),
(105, 'Prem', 'Marketing Specialist', 'Marketing',27,'prem@gmail.com', '2023-07-05', 60000);

SELECT employee_id FROM uptDatt;
SELECT employee_id ,name FROM uptDatt;
SELECT employee_id ,name ,position FROM uptDatt;
SELECT employee_id ,name ,position,department FROM uptDatt;
SELECT employee_id ,name ,position,department,hire_date FROM uptDatt;
SELECT employee_id ,name ,position,department,age,hire_date FROM uptDatt;
SELECT employee_id ,name ,position,department,age,email,hire_date FROM uptDatt;

SELECT employee_id ,name ,position,department,age,email,hire_date,salary FROM uptDatt;


UPDATE uptDatt
SET name='Sahni'
WHERE employee_id=101;

UPDATE uptDatt
SET salary=5000
WHERE employee_id=102;

UPDATE uptDatt
SET position='DATA Science'
WHERE name='Ujjwal';


UPDATE uptDatt
SET age=30
where name='sahni';

UPDATE uptDatt
SET age=30
WHERE employee_id=101;

UPDATE uptDatt
SET email='sahni@gmail.com'
WHERE employee_id=101;

SELECT * FROM uptDatt ORDER BY employee_id ASC;
SELECT * FROM uptDa ORDER BY employee_id DESC;


UPDATE uptDatt
SET city='motihari'
WHERE age>=26;

UPDATE uptDatt
SET age=30, city='bihar'
WHERE username='Dhiraj';


UPDATE uptDatt
SET age=age+1
WHERE email LIKE '%@gmail.com';


SELECT * FROM uptDatt;
