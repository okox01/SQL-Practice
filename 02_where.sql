-- 02_where.sql
-- SQL Practice: WHERE Clause
-- Repository: SQL-Practice
-- Author: Sayed Ahmed Sami

-------------------------------------------------
-- 1️⃣ Simple WHERE conditions
-------------------------------------------------
-- Select customers from USA
SELECT * 
FROM customers
WHERE country = 'USA';

-- Select orders with total_amount greater than 500
SELECT * 
FROM orders
WHERE total_amount > 500;

-------------------------------------------------
-- 2️⃣ WHERE with AND
-------------------------------------------------
-- Select customers from USA aged over 25
SELECT * 
FROM customers
WHERE country = 'USA' AND age > 25;

-- Select orders from customer_id 101 with total_amount > 100
SELECT * 
FROM orders
WHERE customer_id = 101 AND total_amount > 100;

-------------------------------------------------
-- 3️⃣ WHERE with OR
-------------------------------------------------
-- Select customers from USA or Canada
SELECT * 
FROM customers
WHERE country = 'USA' OR country = 'Canada';

-- Select orders with total_amount > 500 or order_id < 50
SELECT * 
FROM orders
WHERE total_amount > 500 OR order_id < 50;

-------------------------------------------------
-- 4️⃣ WHERE with NOT
-------------------------------------------------
-- Select customers NOT from USA
SELECT * 
FROM customers
WHERE NOT country = 'USA';

-- Select orders NOT from customer_id 101
SELECT * 
FROM orders
WHERE NOT customer_id = 101;

-------------------------------------------------
-- 5️⃣ WHERE with IN
-------------------------------------------------
-- Select customers from USA, Canada, or UK
SELECT * 
FROM customers
WHERE country IN ('USA', 'Canada', 'UK');

-- Select orders from order_id 10, 20, 30
SELECT * 
FROM orders
WHERE order_id IN (10, 20, 30);

-------------------------------------------------
-- 6️⃣ WHERE with LIKE
-------------------------------------------------
-- Select customers whose name starts with 'A'
SELECT * 
FROM customers
WHERE name LIKE 'A%';

-- Select products containing 'Book' in their name
SELECT * 
FROM products
WHERE product_name LIKE '%Book%';