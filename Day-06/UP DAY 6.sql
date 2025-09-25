CREATE TABLE up(
   user_id serial PRIMARY KEY,
   username varchar(50),
   email varchar(50),
   age int,
   city varchar(50)
);


INSERT INTO up(username,email,age,city)
VALUES
('Aarav Sharma', 'aarav.sharma@example.com', 22, 'Mumbai'),
('Ishita Verma', 'ishita.verma@example.com', 24, 'Delhi'),
('Rohan Iyer', 'rohan.iyer@example.com', 21, 'Bengaluru'),
('Priya Nair', 'priya.nair@example.com', 23, 'Chennai'),
('Kabir Mehta', 'kabir.mehta@example.com', 25, 'Kolkata');


UPDATE up
SET city='motihari'
WHERE age >= 23;

UPDATE up
SET age=20, city='bihar'
WHERE username='Rohan lyer';

ALTER TABLE up
RENAME username TO full_name;

ALTER TABLE up
ALTER COLUMN age TYPE SMALLINT;


SELECT * FROM up;