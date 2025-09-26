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


-- Total Quantity Available of all products
select sum(quantity) AS total_quantity from products;

select sum(quantity) AS total_quantity from products
where category='Electronics' and price >20000;


-- Total number of products
select count(*) AS total_products from products;
-- count with condition
select count(*) AS total_products from products
where product_name like '%phone%';

-- - average Price of Products
select avg(price) as average_price from products;

-- - average Price of Products with condition
select avg(price) as average_price from products
where category='accessories' or added_date > '2024-02-01'


-- Maximum and Minimum price
select max(price) as max_price,
min(price) as max_price
from products,

where product_name= 'Tablet';

select min(price) as max_price from products;


-- Aggregate Functions – Practice Questions (5+ each)

-- 1. COUNT

-- Count the total number of products.
select count(*) AS total_products from products;

-- Count the number of products in the Electronics category.
select count(*) AS total_products_electronics from products
where category='Electronics';

-- Count the number of products with a discount rate greater than 10%.
SELECT COUNT(*) AS discount_above_10 FROM products
WHERE discount_rate > 10;
-- Count how many products were added in 2024.

SELECT COUNT(*) AS products_added_2024 FROM products
WHERE EXTRACT(YEAR FROM added_date) = 2024;
-- Count the number of products in the Accessories category.
select count(*)AS product_all from products
where category='Accessories';

-- 2. SUM

-- Find the total quantity of all products in stock.
select sum(quantity) as all_products from products;
-- Find the total price of all Electronics products.
select sum(price) as total_electronics_price from products
where category='Electronic';

SELECT SUM(price) AS total_electronics_price FROM products 
WHERE category = 'Electronics';
-- Find the total discount amount (price × discount_rate / 100) for all products.
select sum(price * discount_rate / 100) as discount_amount from products;

SELECT SUM(price * discount_rate / 100) AS total_discount_amount FROM products;
-- Find the total price value of all products in the Furniture category (price × quantity).
select sum (price * quantity) AS price_value from products
where category='Furniture';
-- Find the total quantity of products added after January 2024.
SELECT SUM(quantity) AS total_quantity_after_jan2024 FROM products
WHERE added_date > '2024-01-01';

-- 3. AVG

-- Find the average price of all products.
select avg(price) as all_product from products;

-- Find the average discount rate across all products.
SELECT AVG(discount_rate) AS avg_discount FROM products;

-- Find the average price of products in the Accessories category.
select avg(price) as price_of_product from products
where category='Accessories';

-- Find the average quantity of products in stock.
select avg(quantity) as average_quantity from products;
-- Find the average price of products added in 2024.
SELECT AVG(price) AS avg_price_2024 FROM products
WHERE EXTRACT(YEAR FROM added_date) = 2024;

-- 4. MIN

-- Find the minimum product price.
select min(price) as product_price from products;
-- Find the minimum discount rate among all products.
select min(discount_rate) as min_discount from products;
-- Find the lowest quantity in stock.
select min(quantity) as lowest_quantity from products;

-- Find the earliest added_date among all products.
SELECT MIN(added_date) AS earliest_date FROM products;

-- Find the cheapest product in the Electronics category.
SELECT MIN(price) AS cheapest_electronics FROM products 
WHERE category = 'Electronics';

-- 5. MAX

-- Find the maximum product price.
select max(price) as max_product from products;
-- Find the highest discount rate.
SELECT MAX(discount_rate) AS max_discount FROM products;
-- Find the product with the largest quantity in stock.
SELECT MAX(quantity) AS max_quantity FROM products;
-- Find the latest added_date among all products.
SELECT MAX(added_date) AS latest_date FROM products;
-- Find the most expensive product in the Furniture category.
SELECT MAX(price) AS max_furniture_price FROM products
WHERE category = 'Furniture';

SELECT * FROM products;
