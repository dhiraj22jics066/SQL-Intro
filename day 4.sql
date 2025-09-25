CREATE TABLE DataType (
    user_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INTEGER CHECK (age >= 18),
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--INSERTING DATA INTO TABLE

INSERT INTO  DataType(user_id, name, email, age) 
VALUES (1, 'John Doe', 'john.doe@example.com', 25);

-- INSERTING DATA INTO TABLE 2
INSERT INTO DataType(user_id, name, email, age) 
VALUES (2, 'John Doe', 'john1.doe@example.com', 19);
		

SELECT * FROM DataType;