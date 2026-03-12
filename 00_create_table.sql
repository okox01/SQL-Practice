-- 00_create_tables.sql
-- SQL Practice: Setup Mini Datasets (Recruiter-Ready)
-- Repository: SQL-Practice
-- Author: Sayed Ahmed Sami

-------------------------------------------------
-- Table 1: customers
-------------------------------------------------
CREATE TABLE IF NOT EXISTS customers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    country VARCHAR(50),
    city VARCHAR(50),
    join_date DATE
);

INSERT INTO customers (id, name, age, country, city, join_date) VALUES
(1, 'Sami', 22, 'Bangladesh', 'Dhaka', '2025-01-10'),
(2, 'Alice', 30, 'USA', 'New York', '2025-03-05'),
(3, 'Bob', 25, 'Canada', 'Toronto', '2025-06-20'),
(4, 'Carol', 28, 'UK', 'London', '2025-09-15'),
(5, 'David', 35, 'India', 'Mumbai', '2025-12-01');

-------------------------------------------------
-- Table 2: orders
-------------------------------------------------
CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    total_amount INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO orders (order_id, customer_id, total_amount, order_date) VALUES
(1, 1, 200, '2026-01-05'),
(2, 2, 450, '2026-01-15'),
(3, 3, 300, '2026-02-10'),
(4, 4, 150, '2026-02-20'),
(5, 5, 500, '2026-03-01');

-------------------------------------------------
-- Table 3: products
-------------------------------------------------
CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    supplier VARCHAR(50),
    price INT
);

INSERT INTO products (product_id, product_name, category, supplier, price) VALUES
(1, 'Notebook', 'Stationery', 'OfficeSupplyCo', 50),
(2, 'Pen', 'Stationery', 'OfficeSupplyCo', 5),
(3, 'Laptop', 'Electronics', 'TechStore', 1000),
(4, 'Chair', 'Furniture', 'HomeGoods', 150),
(5, 'Book', 'Books', 'BookStore', 20);

-------------------------------------------------
-- ✅ Notes:
-- 1. Run this file first to create all tables and sample data
-- 2. Other SQL files (01_select → 04_between) use these tables
-- 3. This makes the repo self-contained for anyone to run queries
-------------------------------------------------