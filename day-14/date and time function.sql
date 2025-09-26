
-- date and time function 

-- now() current time and date
select now() as current_date_and_time;

-- current date
select current_date as today_date;

select Added_date, current_date ,(current_date-added_date) as difference
from products;

-- Extract parts of date
select product_name,
extract(year from added_date) as year_added,
extract(month from added_date) as month_added,
extract(day from added_date) as day_added
from products;


-- age between or age 
select product_name,
        age(current_date ,added_date) as age_added_date
from products;

to_char() formate(dd-mon-yyyy)

select product_name,
       to_char(added_date,'dd-mon-yyyy') as age_added_date
from products;

-- date_part
select product_name ,added_date,
       date_part('dow',added_date) as day_of_week
from products;



-- Practice Questions — Date & Time Functions



-- 1. CURRENT_DATE / NOW()

-- Show today’s date.
select current_date;
select now();
-- Display all product names with today’s date.
select product_name, current_date as today_date from products;
-- Show the current timestamp for each product.
SELECT product_name, NOW() AS current_timestamp FROM products;

-- 2. EXTRACT()

-- Extract the year from added_date for all products.
select product_name,
extract(year from added_date) as year_added
from products;
-- Extract the month of products in the Electronics category.
SELECT product_name, EXTRACT(MONTH FROM added_date) AS month_added
FROM products
WHERE category = 'Electronics';
-- Find the day part of added_date for products having discount greater than 10.
SELECT product_name, EXTRACT(MONTH FROM added_date) AS month_added
FROM products
WHERE discount_rate > 10;

-- 3. AGE() (PostgreSQL only)

-- Show how many days old each product record is compared to today.
select product_name, age(current_date,added_date) as product_record
from products;
-- Find products that are older than 90 days from today.
SELECT product_name
FROM products
WHERE AGE(CURRENT_DATE, added_date) > INTERVAL '90 days';
-- Show product name with exact AGE between today and added_date.

SELECT product_name, AGE(NOW(), added_date) AS exact_age FROM products;

-- 4. DATE_TRUNC()
SELECT product_name, DATE_TRUNC('month', added_date) AS month_start 
FROM products;

-- 2
SELECT product_name, DATE_TRUNC('year', added_date) AS year_start 
FROM products;

-- 3
SELECT product_name, DATE_TRUNC('day', added_date) AS day_start 
FROM products;

-- Truncate added_date to the start of the month for all products.

-- Show added_date truncated to the start of the year.

-- Display product name with added_date truncated to day.

-- 5. INTERVAL

-- 3
SELECT product_name, added_date + INTERVAL '30 days' AS after_30_days FROM products;

-- Show added_date + 10 days for each product.
SELECT product_name, added_date, added_date + INTERVAL '10 days' AS new_date 
FROM products;
-- Display product names with their added_date minus 2 months.
SELECT product_name, added_date, added_date - INTERVAL '2 months' AS two_months_before 
FROM products;
-- Find products that will be added 30 days later from their added_date.

-- 6. TO_CHAR()

-- Display added_date in the format DD-MM-YYYY.

-- Show product names with added_date formatted as Month YYYY.

-- Display added_date along with the day name (like Monday, Tuesday).

SELECT product_name, TO_CHAR(added_date, 'DD-MM-YYYY') AS formatted_date
FROM products;

-- 2
SELECT product_name, TO_CHAR(added_date, 'Month YYYY') AS month_year
FROM products;

-- 3
SELECT product_name, TO_CHAR(added_date, 'Day') AS day_name
FROM products;

