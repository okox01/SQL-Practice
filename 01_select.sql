-- 01_select.sql
-- SQL Practice: Basic SELECT Statements
-- Repository: SQL-Practice
-- Author: Sayed Ahmed Sami

-------------------------------------------------
-- 1️⃣ Select all columns from a table
-------------------------------------------------
-- Select all columns from customers table
SELECT * FROM customers;

-- Select all columns from orders table
SELECT * FROM orders;

-------------------------------------------------
-- 2️⃣ Select specific columns
-------------------------------------------------
-- Select name and country from customers
SELECT name, country 
FROM customers;

-- Select order_id and total_amount from orders
SELECT order_id, total_amount 
FROM orders;

-------------------------------------------------
-- 3️⃣ Select distinct values
-------------------------------------------------
-- Select distinct countries from customers
SELECT DISTINCT country 
FROM customers;

-- Select distinct product categories from products
SELECT DISTINCT category 
FROM products;

-------------------------------------------------
-- 4️⃣ Select with LIMIT
-------------------------------------------------
-- Select first 5 customers
SELECT * FROM customers
LIMIT 5;

-- Select first 10 orders
SELECT * FROM orders
LIMIT 10;

-------------------------------------------------
-- 5️⃣ Select with alias
-------------------------------------------------
-- Rename column in output
SELECT name AS customer_name, country AS customer_country
FROM customers;

-- Rename table alias for easier reference
SELECT c.name, c.country
FROM customers AS c;