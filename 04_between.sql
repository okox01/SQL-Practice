-- 04_between.sql
-- SQL Practice: BETWEEN Operator (Recruiter-Ready)
-- Repository: SQL-Practice
-- Author: Sayed Ahmed Sami

-------------------------------------------------
-- Mini Dataset Reminder: Customers & Orders
-------------------------------------------------
-- customers: id, name, age, country, city, join_date
-- orders: order_id, customer_id, total_amount, order_date

-------------------------------------------------
-- 1️⃣ Basic BETWEEN usage (numbers)
-------------------------------------------------
-- Select customers aged between 25 and 30
SELECT *
FROM customers
WHERE age BETWEEN 25 AND 30;

-- Select orders with total_amount between 200 and 400
SELECT *
FROM orders
WHERE total_amount BETWEEN 200 AND 400;

-------------------------------------------------
-- 2️⃣ BETWEEN with dates
-------------------------------------------------
-- Select orders placed between 2026-01-01 and 2026-02-15
SELECT *
FROM orders
WHERE order_date BETWEEN '2026-01-01' AND '2026-02-15';

-- Select customers who joined between 2025-03-01 and 2025-12-31
SELECT *
FROM customers
WHERE join_date BETWEEN '2025-03-01' AND '2025-12-31';

-------------------------------------------------
-- 3️⃣ BETWEEN with text (alphabetical)
-------------------------------------------------
-- Select customers whose names are alphabetically between 'A' and 'C'
SELECT *
FROM customers
WHERE name BETWEEN 'A' AND 'C';

-- Select cities alphabetically between 'D' and 'M'
SELECT *
FROM customers
WHERE city BETWEEN 'D' AND 'M';

-------------------------------------------------
-- 4️⃣ BETWEEN with NOT
-------------------------------------------------
-- Customers NOT aged between 25 and 30
SELECT *
FROM customers
WHERE age NOT BETWEEN 25 AND 30;

-- Orders NOT with total_amount between 200 and 400
SELECT *
FROM orders
WHERE total_amount NOT BETWEEN 200 AND 400;

-------------------------------------------------
-- 5️⃣ Real-World Example Query
-------------------------------------------------
-- Find all customers aged 25-30 from countries other than USA
SELECT *
FROM customers
WHERE age BETWEEN 25 AND 30 AND country <> 'USA';

-- Find all orders in January and February 2026
SELECT *
FROM orders
WHERE order_date BETWEEN '2026-01-01' AND '2026-02-28';