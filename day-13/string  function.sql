-- string function 

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10, 2),
    quantity INT,
    added_date DATE,
    discount_rate NUMERIC(5, 2)
);

INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate)
VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);


SELECT * FROM products;


-- Get all the categories in Uppercase
select upper(category) as upercate_category from products;

-- Get all the categories in Lowercase
select lower(category) as lowercase from products;

-- Join Product_name adn category text with hypen. contat
select CONCAT(product_name,'-',category) as product_details from products;

-- Extract the first 5 characters from product_name
select substring(product_name,1,5) as short_name from products;

-- Count length
SELECT product_name, LENGTH(product_name) AS COUNT_OF_CHAR
FROM products;

--Remove leading and trailing spaces from string
 SELECT LENGTH(TRIM('  Monitor    ')) AS Trimmed_Text;
 SELECT LENGTH('  Monitor    ') AS Trimmed_Text;

-- Replace the word "phone" with "device" in product names
SELECT REPLACE(product_name, 'phone','device') AS updated
FROM products;

-- Get the first 3 characters from category

SELECT RIGHT(category, 3) AS Catergory_Capital
FROM products;


-- Practice Questions (String Functions)

-- 1. UPPER()

-- Display all product names in uppercase.
select upper(product_name) as capital from products;
-- Show category names in uppercase for products priced above 20000.
select upper(category) as category_name from products
where price >20000;
-- Convert the first 5 product names into uppercase and display them with price.
select upper(product_name) ,price from products
limit 5;
SELECT UPPER(product_name), price FROM products LIMIT 5;
-- Find product names in uppercase where discount is greater than 10.
select upper(product_name) from products
where discount_rate >10;

SELECT UPPER(product_name) FROM products 
WHERE discount_rate > 10;
-- Display product names in uppercase and their length.
SELECT UPPER(product_name), LENGTH(product_name) FROM products;

-- 2. LOWER()


-- Display all product names in lowercase.
select lower(product_name ) from products;

-- Show product names in lowercase for category = 'Electronics'.
select lower(product_name )  from products
where category='Electronics';
-- Convert all category names to lowercase.
select lower(category) as category_name from products;
-- Show product names in lowercase where quantity is less than 20.
select lower(product_name) from products
where quantity < 20;

-- Display product names in lowercase along with their added date.
SELECT LOWER(product_name), added_date FROM products;

-- 3. LENGTH()

-- Display product names with their character length.
select product_name, length(product_name) from products;
-- Show only those products where product name length is greater than 7.

SELECT product_name FROM products
WHERE LENGTH(product_name) > 7;
-- Find the product with the longest name.
SELECT product_name FROM products
ORDER BY LENGTH(product_name) DESC 
LIMIT 1;
-- Show category names with their length.
SELECT category, LENGTH(category) FROM products
-- Display products where category name length is less than 10.
SELECT product_name, category FROM products
WHERE LENGTH(category) < 10;

-- 4. SUBSTRING()

-- Display the first 3 characters of each product name.
SELECT SUBSTRING(product_name , 1,3) AS first_3_chars FROM products;
-- Extract the last 4 characters of product names.
select substring(product_name,4) from products
-- Show the substring of product names from position 2 for length 5.
select substring(product_name,2,5) from products
-- Display the first 4 characters of each category.
select SUBSTRING(category ,1,4) AS first_4_chars FROM products;
-- Extract the middle 3 characters of product names (for names longer than 5).
SELECT SUBSTRING(product_name ,3,3) AS middle_3_chars
FROM products
WHERE LENGTH(product_name) > 5;

-- 5. CONCAT()

-- Display product name and category together as a single column.
SELECT CONCAT(product_name, ' - ', category) AS product_category FROM products;
-- Concatenate product name with its price.
SELECT CONCAT(product_name, ' - ', price) AS product_category FROM products;
-- Show "Product: <name>, Price: <price>" format using CONCAT.
SELECT CONCAT('Product: ', product_name, ', Price: ', price) AS details FROM products;
-- Display category + product name in one column.
SELECT CONCAT(category, ': ', product_name) AS category_product FROM products;

-- Concatenate product name, category, and discount rate with separators.
SELECT CONCAT(product_name, ' | ', category, ' | ', discount_rate, '%') AS product_info FROM products;
-- 6. TRIM(), LTRIM(), RTRIM()

-- (You can insert extra spaces in test data later to test properly.)
SELECT TRIM(product_name) FROM products;
-- Display product names after removing leading and trailing spaces.
SELECT TRIM(product_name) FROM products;
-- Show category names using LTRIM.
SELECT LTRIM(category) FROM products;
-- Show product names using RTRIM.
SELECT RTRIM(product_name) FROM products;

-- Trim spaces and then display product names with their length.
SELECT TRIM(product_name), LENGTH(TRIM(product_name)) FROM products;

-- Display product names before and after TRIM to compare.
SELECT product_name AS before_trim, 
TRIM(product_name) AS after_trim FROM products;
