CREATE TABLE users (
    employee_id SERIAL PRIMARY KEY,
     name VARCHAR(50) NOT NULL,
     postiion VARCHAR(100) NOT NULL,
     department varchar(50),
     hire_date date,
	 salary numeric(19,2)
);

SELECT * FROM users;
