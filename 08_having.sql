-- 08_having.sql
-- SQL Practice: HAVING Clause
-- Repository: SQL-Practice
-- Author: Sayed Ahmed Sami

-------------------------------------------------
-- Mini Dataset Reminder
-------------------------------------------------
-- customers: id, name, age, country, city, join_date
-- orders: order_id, customer_id, total_amount, order_date

-------------------------------------------------
-- 1️⃣ HAVING with COUNT
-------------------------------------------------
-- Find countries having more than 1 customer

SELECT country, COUNT(*) AS total_customers
FROM customers
GROUP BY country
HAVING COUNT(*) > 1;


-------------------------------------------------
-- 2️⃣ HAVING with SUM
-------------------------------------------------
-- Customers who spent more than 300 in total orders

SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 300;


-------------------------------------------------
-- 3️⃣ HAVING with AVG
-------------------------------------------------
-- Customers whose average order value is greater than 200

SELECT customer_id, AVG(total_amount) AS avg_order
FROM orders
GROUP BY customer_id
HAVING AVG(total_amount) > 200;


-------------------------------------------------
-- 4️⃣ HAVING with ORDER BY
-------------------------------------------------
-- Countries having more than 1 customer,
-- sorted by number of customers

SELECT country, COUNT(*) AS total_customers
FROM customers
GROUP BY country
HAVING COUNT(*) > 1
ORDER BY total_customers DESC;


-------------------------------------------------
-- 5️⃣ Real World Example
-------------------------------------------------
-- Find customers who generated more than 400 revenue

SELECT customer_id, SUM(total_amount) AS revenue
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 400;