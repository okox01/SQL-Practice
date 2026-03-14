-- 10_limit.sql
-- SQL Practice: LIMIT Clause
-- Repository: SQL-Practice
-- Author: Sayed Ahmed Sami

-------------------------------------------------
-- Mini Dataset Reminder
-------------------------------------------------
-- customers: id, name, age, country, city, join_date
-- orders: order_id, customer_id, total_amount, order_date

-------------------------------------------------
-- 1️⃣ Basic LIMIT
-------------------------------------------------
-- Return only the first 3 customers

SELECT *
FROM customers
LIMIT 3;


-------------------------------------------------
-- 2️⃣ LIMIT with ORDER BY
-------------------------------------------------
-- Get the top 3 oldest customers

SELECT *
FROM customers
ORDER BY age DESC
LIMIT 3;


-------------------------------------------------
-- 3️⃣ LIMIT with Aggregation
-------------------------------------------------
-- Top 2 customers who spent the most money

SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 2;


-------------------------------------------------
-- 4️⃣ LIMIT with OFFSET
-------------------------------------------------
-- Skip the first 2 rows and return the next 2 rows

SELECT *
FROM customers
LIMIT 2 OFFSET 2;


-------------------------------------------------
-- 5️⃣ Real World Example
-------------------------------------------------
-- Get the latest 3 orders

SELECT *
FROM orders
ORDER BY order_date DESC
LIMIT 3;