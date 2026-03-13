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

--We are launching a platinum service for our most loyal customers
--we will assign platinum status to customers that have had 40
-- or more transaction payments
--What customer_ids are eligible for platinum status?
SELECT customer_id,COUNT(customer_id) FROM payment
GROUP BY customer_id
HAVING COUNT(customer_id)>=40;

--What are the customer ids of customers who have spent more than 
--100$ in payment transactions with our staff_id member 2 ?

SELECT customer_id,staff_id,SUM(amount) FROM payment
WHERE staff_id=2
GROUP BY customer_id,staff_id
HAVING SUM(amount)>100;