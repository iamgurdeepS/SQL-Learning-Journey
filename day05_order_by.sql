==========================================
Day 05: Sorting Query Results with ORDER BY (PostgreSQL)
Author: Deep
==========================================

==========================================
SETUP: Create Products Table & Insert Data
==========================================
-- Question: Create a 'products' table and insert sample records for sorting exercises.

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(60) NOT NULL,
    category VARCHAR(40),
    price NUMERIC(10,2),
    stock_qty INT
);

INSERT INTO products (product_id, product_name, category, price, stock_qty)
VALUES
    (1, 'Mechanical Keyboard', 'Accessories', 3499.00, 25),
    (2, 'Wireless Mouse', 'Accessories', 1299.00, 60),
    (3, '27-inch Monitor', 'Displays', 16500.00, 15),
    (4, 'USB-C Hub', 'Accessories', 1299.00, 40),
    (5, 'Laptop Stand', 'Ergonomics', 2199.00, 15),
    (6, 'Studio Microphone', 'Audio', 8999.00, 10);


==========================================
LEVEL 1: ASCENDING & DESCENDING SORTING
==========================================
-- Questions:
-- 1. List all products sorted by price from lowest to highest (ASC).
-- 2. List all products sorted by price from highest to lowest (DESC).

SELECT product_name, category, price
FROM products
ORDER BY price ASC;

SELECT product_name, category, price
FROM products
ORDER BY price DESC;


==========================================
LEVEL 2: MULTI-COLUMN SORTING
==========================================
-- Questions:
-- 1. Sort products by price descending, and when prices tie, sort by product_name ascending.
-- 2. Sort products by stock_qty ascending, then price descending.

SELECT product_name, category, price
FROM products
ORDER BY price DESC, product_name ASC;

SELECT product_name, stock_qty, price
FROM products
ORDER BY stock_qty ASC, price DESC;

==========================================
LEVEL 3: COMBINING WHERE & ORDER BY
==========================================
-- Questions:
-- 1. Find 'Accessories' sorted from highest price to lowest price.
-- 2. Find products priced above 2000 sorted alphabetically by product_name.

SELECT product_name, price, stock_qty
FROM products
WHERE category = 'Accessories'
ORDER BY price DESC;

SELECT product_name, category, price
FROM products
WHERE price > 2000
ORDER BY product_name ASC;

==========================================