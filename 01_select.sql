-- 01_select.sql
-- SQL Practice: SELECT Statements (Recruiter-Ready)
-- Repository: SQL-Practice
-- Author: Sayed Ahmed Sami

-------------------------------------------------
-- Mini Dataset: Customers
-------------------------------------------------
-- Table: customers
-- id | name   | age | country     | city      | join_date
-- 1  | Sami   | 22  | Bangladesh  | Dhaka     | 2025-01-10
-- 2  | Alice  | 30  | USA         | New York  | 2025-03-05
-- 3  | Bob    | 25  | Canada      | Toronto   | 2025-06-20
-- 4  | Carol  | 28  | UK          | London    | 2025-09-15
-- 5  | David  | 35  | India       | Mumbai    | 2025-12-01

-- Table: orders
-- order_id | customer_id | total_amount | order_date
-- 1        | 1           | 200          | 2026-01-05
-- 2        | 2           | 450          | 2026-01-15
-- 3        | 3           | 300          | 2026-02-10
-- 4        | 4           | 150          | 2026-02-20
-- 5        | 5           | 500          | 2026-03-01

-------------------------------------------------
-- 1️⃣ Select all columns
-------------------------------------------------
-- Select all data from customers (good for overview)
SELECT * FROM customers;

-- Select all data from orders
SELECT * FROM orders;

-------------------------------------------------
-- 2️⃣ Select specific columns
-------------------------------------------------
-- Select only name and country to get location info
SELECT name, country 
FROM customers;

-- Select order_id and total_amount to analyze purchases
SELECT order_id, total_amount 
FROM orders;

-------------------------------------------------
-- 3️⃣ Select distinct values
-------------------------------------------------
-- Find all unique countries of customers
SELECT DISTINCT country 
FROM customers;

-- Find unique categories of products (if you have a products table later)
-- SELECT DISTINCT category FROM products;

-------------------------------------------------
-- 4️⃣ Select with LIMIT
-------------------------------------------------
-- View first 3 customers only (preview data)
SELECT * FROM customers
LIMIT 3;

-- View first 3 orders only
SELECT * FROM orders
LIMIT 3;

-------------------------------------------------
-- 5️⃣ Select with alias
-------------------------------------------------
-- Rename columns for easier reading
SELECT name AS customer_name, country AS customer_country
FROM customers;

-- Using table alias for easier reference
SELECT c.name, c.country
FROM customers AS c;

-------------------------------------------------
-- 6️⃣ Real-World Example Query
-------------------------------------------------
-- Suppose we want to analyze who are the first 2 customers that joined the platform
SELECT name, join_date
FROM customers
ORDER BY join_date ASC
LIMIT 2;