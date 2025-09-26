-- condational function

select * from products;
/* 1. CASE Function – Categorizing Based on Conditions
 We will categorize products into price ranges:

Expensive if the price is greater than or equal to 50,000.
Moderate if the price is between 10,000 and 49,999.
Affordable if the price is less than 10,000.
*/

select product_name,price,
        case
		   when price >= 50000 then 'expensive'
		   when price >=100000 and price <= 10000 then 'moderate'
		   else 'affordable'
		 end as price_category
from products;	

.

-- 📌 CASE Function — Practice Questions

/*Write a query to classify products into 
"Premium" (price > 50,000),
"Mid-Range" (10,000–50,000),
and "Budget" (below 10,000).
*/

select product_name,price,
      case
	  when price > 50000 then 'premium'
	  when price between 10000 and 50000 then 'mid-range'
	  else 'budget'
	  end as product_classify
from products;

/*Create a query that shows product names,
quantity, and a status as 
"Out of Stock" if quantity = 0, 
"Low Stock" if quantity < 10,
else "In Stock".
*/

select product_name,quantity,
        case
		when quantity =0 then 'out of stock'
		when quantity < 10 then 'low stock'
		else 'in stock'
		end as stock_status
from products;

/* Display product names with discount rates categorized as 
"High Discount" (>= 15%),
"Medium Discount" (5–14%), 
and "Low Discount" (< 5%).
*/
select product_name,discount_rate,
        case
		when discount_rate >=15  then 'high discount'
		when discount_rate between 5 and 14  then 'medium discount'
		else 'low discount'
		end as discount_rate
from products;		


-- -- Show product names with added_date marked as 
-- "New Product" if added after 2024-01-01, 
-- otherwise "Old Product".

SELECT product_name, added_date,
       CASE
           WHEN added_date > '2024-01-01' THEN 'New Product'
           ELSE 'Old Product'
       END AS product_status
FROM products;

-- Write a query that replaces category names with custom labels:

-- 'Electronics' → 'Electronic Item'

-- 'Furniture' → 'Home Furniture'

-- 'Accessories' → 'Computer Accessory'

-- Others → 'Other'.

SELECT product_name, category,
       CASE category
           WHEN 'Electronics' THEN 'Electronic Item'
           WHEN 'Furniture' THEN 'Home Furniture'
           WHEN 'Accessories' THEN 'Computer Accessory'
           ELSE 'Other'
       END AS category_label
FROM products;


--  Write a query that shows 
-- "Expensive & Low Stock" if price > 40000 and quantity < 10,
-- otherwise show "Normal".

SELECT product_name, price, quantity,
       CASE
           WHEN price > 40000 AND quantity < 10 THEN 'Expensive & Low Stock'
           ELSE 'Normal'
       END AS status
FROM products;
