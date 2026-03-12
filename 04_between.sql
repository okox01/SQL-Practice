-- 04_between.sql
-- SQL Practice: BETWEEN Operator
-- Repository: SQL-Practice
-- Author: Sayed Ahmed Sami

-------------------------------------------------
-- 1️⃣ Basic BETWEEN usage
-------------------------------------------------
-- Select customers aged between 20 and 30
SELECT *
FROM customers
WHERE age BETWEEN 20 AND 30;

-- Select orders with total_amount between 100 and 500
SELECT *
FROM orders
WHERE total_amount BETWEEN 100 AND 500;

-------------------------------------------------
-- 2️⃣ BETWEEN with dates
-------------------------------------------------
-- Select orders placed between '2026-01-01' and '2026-03-01'
SELECT *
FROM orders
WHERE order_date BETWEEN '2026-01-01' AND '2026-03-01';

-- Select customers who joined between '2025-01-01' and '2025-12-31'
SELECT *
FROM customers
WHERE join_date BETWEEN '2025-01-01' AND '2025-12-31';

-------------------------------------------------
-- 3️⃣ BETWEEN with text (alphabetical)
-------------------------------------------------
-- Select products with names between 'A' and 'M'
SELECT *
FROM products
WHERE product_name BETWEEN 'A' AND 'M';

-- Select cities alphabetically between 'B' and 'L'
SELECT *
FROM customers
WHERE city BETWEEN 'B' AND 'L';

-------------------------------------------------
-- 4️⃣ BETWEEN with NOT
-------------------------------------------------
-- Select customers NOT aged between 20 and 30
SELECT *
FROM customers
WHERE age NOT BETWEEN 20 AND 30;

-- Select orders NOT with total_amount between 100 and 500
SELECT *
FROM orders
WHERE total_amount NOT BETWEEN 100 AND 500;