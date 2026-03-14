-- 09_order_by.sql
-- SQL Practice: ORDER BY Clause
-- Repository: SQL-Practice
-- Author: Sayed Ahmed Sami

-------------------------------------------------
-- Mini Dataset Reminder
-------------------------------------------------
-- customers: id, name, age, country, city, join_date
-- orders: order_id, customer_id, total_amount, order_date

-------------------------------------------------
-- 1️⃣ Basic ORDER BY (Ascending)
-------------------------------------------------
-- Sort customers by age (lowest to highest)

SELECT *
FROM customers
ORDER BY age ASC;


-------------------------------------------------
-- 2️⃣ ORDER BY Descending
-------------------------------------------------
-- Sort customers by age from highest to lowest

SELECT *
FROM customers
ORDER BY age DESC;


-------------------------------------------------
-- 3️⃣ ORDER BY with Multiple Columns
-------------------------------------------------
-- Sort customers first by country, then by age

SELECT *
FROM customers
ORDER BY country ASC, age ASC;


-------------------------------------------------
-- 4️⃣ ORDER BY with SELECT Columns
-------------------------------------------------
-- Show name and country sorted alphabetically by name

SELECT name, country
FROM customers
ORDER BY name;


-------------------------------------------------
-- 5️⃣ ORDER BY with Aggregate Functions
-------------------------------------------------
-- Sort customers by total spending (highest first)

SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC;


-------------------------------------------------
-- 6️⃣ Real World Example
-------------------------------------------------
-- Find the highest order amounts first

SELECT *
FROM orders
ORDER BY total_amount DESC;