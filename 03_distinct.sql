-- 03_distinct.sql
-- SQL Practice: DISTINCT Clause
-- Repository: SQL-Practice
-- Author: Sayed Ahmed Sami

-------------------------------------------------
-- 1️⃣ Basic DISTINCT usage
-------------------------------------------------
-- Select distinct countries from customers
SELECT DISTINCT country
FROM customers;

-- Select distinct product categories from products
SELECT DISTINCT category
FROM products;

-------------------------------------------------
-- 2️⃣ DISTINCT with multiple columns
-------------------------------------------------
-- Select distinct combination of country and city
SELECT DISTINCT country, city
FROM customers;

-- Select distinct product category and supplier
SELECT DISTINCT category, supplier
FROM products;

-------------------------------------------------
-- 3️⃣ DISTINCT with ORDER BY
-------------------------------------------------
-- Select distinct countries in alphabetical order
SELECT DISTINCT country
FROM customers
ORDER BY country ASC;

-- Select distinct product categories in reverse order
SELECT DISTINCT category
FROM products
ORDER BY category DESC;

-------------------------------------------------
-- 4️⃣ DISTINCT with COUNT
-------------------------------------------------
-- Count number of distinct countries
SELECT COUNT(DISTINCT country) AS unique_countries
FROM customers;

-- Count number of distinct product categories
SELECT COUNT(DISTINCT category) AS unique_categories
FROM products;