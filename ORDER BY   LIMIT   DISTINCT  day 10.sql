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

-- Retrieve a list of unique departments


