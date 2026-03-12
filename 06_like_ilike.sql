-- 06_like_ilike.sql
-- SQL Practice: LIKE & ILIKE Operators (Pattern Matching)
-- Repository: SQL-Practice
-- Author: Sayed Ahmed Sami

-------------------------------------------------
-- Mini Dataset Reminder
-------------------------------------------------
-- customers: id, name, age, country, city, join_date
-- orders: order_id, customer_id, total_amount, order_date

-------------------------------------------------
-- 1️⃣ LIKE with % (wildcard)
-------------------------------------------------
-- % means any number of characters

-- Customers whose names start with 'A'
SELECT *
FROM customers
WHERE name LIKE 'A%';

-- Customers whose names end with 'e'
SELECT *
FROM customers
WHERE name LIKE '%e';

-- Customers whose names contain 'a'
SELECT *
FROM customers
WHERE name LIKE '%a%';


-------------------------------------------------
-- 2️⃣ LIKE with _ (single character wildcard)
-------------------------------------------------
-- _ represents exactly one character

-- Names with exactly 4 characters
SELECT *
FROM customers
WHERE name LIKE '____';

-- Names starting with 'D' and having 5 characters
SELECT *
FROM customers
WHERE name LIKE 'D____';


-------------------------------------------------
-- 3️⃣ LIKE with cities
-------------------------------------------------

-- Cities starting with 'D'
SELECT *
FROM customers
WHERE city LIKE 'D%';

-- Cities containing 'on'
SELECT *
FROM customers
WHERE city LIKE '%on%';


-------------------------------------------------
-- 4️⃣ ILIKE (case-insensitive search)
-------------------------------------------------
-- ILIKE ignores uppercase/lowercase differences

-- Search for 'dhaka' regardless of case
SELECT *
FROM customers
WHERE city ILIKE 'dhaka';

-- Customers whose name contains 'a' (case insensitive)
SELECT *
FROM customers
WHERE name ILIKE '%a%';


-------------------------------------------------
-- 5️⃣ NOT LIKE
-------------------------------------------------

-- Customers whose names do NOT start with 'A'
SELECT *
FROM customers
WHERE name NOT LIKE 'A%';


-------------------------------------------------
-- 6️⃣ Real World Example
-------------------------------------------------

-- Find customers from cities containing 'o'
SELECT name, city
FROM customers
WHERE city LIKE '%o%';

-- Find customers whose names start with 'C'
SELECT name, country
FROM customers
WHERE name LIKE 'C%';