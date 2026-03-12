-- 05_IN.sql
-- SQL Practice: IN Operator (Recruiter-Ready)
-- Repository: SQL-Practice
-- Author: Sayed Ahmed Sami

-------------------------------------------------
-- Mini Dataset Reminder: Customers & Orders
-------------------------------------------------
-- customers: id, name, age, country, city, join_date
-- orders: order_id, customer_id, total_amount, order_date

-------------------------------------------------
-- 1️⃣ Basic IN usage
-------------------------------------------------
-- Select customers from USA, Canada, or UK
SELECT *
FROM customers
WHERE country IN ('USA', 'Canada', 'UK');

-- Select orders with order_id 1, 3, or 5
SELECT *
FROM orders
WHERE order_id IN (1, 3, 5);

-------------------------------------------------
-- 2️⃣ IN with numbers
-------------------------------------------------
-- Customers aged 22, 25, or 30
SELECT *
FROM customers
WHERE age IN (22, 25, 30);

-- Orders with total_amount 150, 300, 500
SELECT *
FROM orders
WHERE total_amount IN (150, 300, 500);

-------------------------------------------------
-- 3️⃣ IN with NOT
-------------------------------------------------
-- Customers NOT from USA or UK
SELECT *
FROM customers
WHERE country NOT IN ('USA', 'UK');

-- Orders NOT with order_id 2 or 4
SELECT *
FROM orders
WHERE order_id NOT IN (2, 4);

-------------------------------------------------
-- 4️⃣ IN with subquery (Advanced)
-------------------------------------------------
-- Select customers who have placed an order (order_id exists in orders table)
SELECT *
FROM customers
WHERE id IN (SELECT customer_id FROM orders);

-- Select orders placed by customers from Bangladesh or India
SELECT *
FROM orders
WHERE customer_id IN (
    SELECT id 
    FROM customers 
    WHERE country IN ('Bangladesh', 'India')
);

-------------------------------------------------
-- 5️⃣ Real-World Example Query
-------------------------------------------------
-- Suppose we want to find customers from our main target countries: USA, Canada, UK
SELECT name, country
FROM customers
WHERE country IN ('USA', 'Canada', 'UK');

-- Find orders placed by customers aged 25, 28, or 30
SELECT order_id, customer_id, total_amount
FROM orders
WHERE customer_id IN (
    SELECT id 
    FROM customers 
    WHERE age IN (25, 28, 30)
);