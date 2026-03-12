-- 03_distinct.sql
-- SQL Practice: DISTINCT Clause (Recruiter-Ready)
-- Repository: SQL-Practice
-- Author: Sayed Ahmed Sami

-------------------------------------------------
-- Mini Dataset Reminder: Customers & Orders
-------------------------------------------------
-- customers: id, name, age, country, city, join_date
-- orders: order_id, customer_id, total_amount, order_date

-------------------------------------------------
-- 1️⃣ Basic DISTINCT usage
-------------------------------------------------
-- Find all unique countries of customers
SELECT DISTINCT country
FROM customers;

-- Find all unique customer names (for reference)
SELECT DISTINCT name
FROM customers;

-------------------------------------------------
-- 2️⃣ DISTINCT with multiple columns
-------------------------------------------------
-- Find unique combinations of country and city
SELECT DISTINCT country, city
FROM customers;

-- (If products table is added later)
-- Find distinct combinations of category and supplier
-- SELECT DISTINCT category, supplier FROM products;

-------------------------------------------------
-- 3️⃣ DISTINCT with ORDER BY
-------------------------------------------------
-- List unique countries in alphabetical order
SELECT DISTINCT country
FROM customers
ORDER BY country ASC;

-- List unique customer names in reverse order
SELECT DISTINCT name
FROM customers
ORDER BY name DESC;

-------------------------------------------------
-- 4️⃣ DISTINCT with COUNT
-------------------------------------------------
-- Count number of unique countries
SELECT COUNT(DISTINCT country) AS unique_countries
FROM customers;

-- Count number of unique customer names
SELECT COUNT(DISTINCT name) AS unique_customers
FROM customers;

-------------------------------------------------
-- 5️⃣ Real-World Example Query
-------------------------------------------------
-- Suppose we want to know how many unique countries our customers belong to
SELECT COUNT(DISTINCT country) AS unique_countries
FROM customers;

-- Suppose we want to list all cities where we have at least one customer
SELECT DISTINCT city
FROM customers
ORDER BY city ASC;