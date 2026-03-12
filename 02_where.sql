-- 02_where.sql
-- SQL Practice: WHERE Clause (Recruiter-Ready)
-- Repository: SQL-Practice
-- Author: Sayed Ahmed Sami

-------------------------------------------------
-- Mini Dataset Reminder: Customers & Orders
-------------------------------------------------
-- customers: id, name, age, country, city, join_date
-- orders: order_id, customer_id, total_amount, order_date

-------------------------------------------------
-- 1️⃣ Simple WHERE conditions
-------------------------------------------------
-- Select customers from USA
SELECT * 
FROM customers
WHERE country = 'USA';

-- Select orders with total_amount greater than 300
SELECT * 
FROM orders
WHERE total_amount > 300;

-------------------------------------------------
-- 2️⃣ WHERE with AND
-------------------------------------------------
-- Customers from USA aged over 25
SELECT * 
FROM customers
WHERE country = 'USA' AND age > 25;

-- Orders from customer_id 2 with total_amount over 400
SELECT * 
FROM orders
WHERE customer_id = 2 AND total_amount > 400;

-------------------------------------------------
-- 3️⃣ WHERE with OR
-------------------------------------------------
-- Customers from USA or Canada
SELECT * 
FROM customers
WHERE country = 'USA' OR country = 'Canada';

-- Orders with total_amount > 400 or order_id < 3
SELECT * 
FROM orders
WHERE total_amount > 400 OR order_id < 3;

-------------------------------------------------
-- 4️⃣ WHERE with NOT
-------------------------------------------------
-- Customers NOT from USA
SELECT * 
FROM customers
WHERE NOT country = 'USA';

-- Orders NOT from customer_id 3
SELECT * 
FROM orders
WHERE NOT customer_id = 3;

-------------------------------------------------
-- 5️⃣ WHERE with IN
-------------------------------------------------
-- Customers from USA, Canada, or UK
SELECT * 
FROM customers
WHERE country IN ('USA', 'Canada', 'UK');

-- Orders from order_id 1, 3, 5
SELECT * 
FROM orders
WHERE order_id IN (1, 3, 5);

-------------------------------------------------
-- 6️⃣ WHERE with LIKE
-------------------------------------------------
-- Customers whose name starts with 'A'
SELECT * 
FROM customers
WHERE name LIKE 'A%';

-- Customers whose city contains 'a'
SELECT * 
FROM customers
WHERE city LIKE '%a%';

-------------------------------------------------
-- 7️⃣ Real-World Example Query
-------------------------------------------------
-- Suppose we want to find customers from USA or Canada who are younger than 30
SELECT name, age, country
FROM customers
WHERE (country = 'USA' OR country = 'Canada') AND age < 30;