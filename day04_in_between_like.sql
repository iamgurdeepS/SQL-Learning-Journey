==========================================
Day 04: Membership, Range & Pattern Matching (IN, BETWEEN, LIKE)
Author: Deep
==========================================

==========================================
SETUP: Create Orders Table & Insert Data
==========================================
-- Question: Create an 'orders' table and insert sample records for testing IN, BETWEEN, and LIKE.

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(60) NOT NULL,
    city VARCHAR(50),
    product_code VARCHAR(30),
    order_amount NUMERIC(10,2),
    order_status VARCHAR(25)
);

INSERT INTO orders (order_id, customer_name, city, product_code, order_amount, order_status)
VALUES
    (101, 'Gurpreet Singh', 'Ludhiana', 'LAP-PRO-01', 54000.00, 'Delivered'),
    (102, 'Simran Kaur', 'Chandigarh', 'PHN-X2-09', 22500.00, 'Delivered'),
    (103, 'Aarav Sharma', 'Amritsar', 'TAB-AIR-04', 31000.00, 'Pending'),
    (104, 'Neha Verma', 'Jalandhar', 'EAR-BUD-12', 2499.00, 'Shipped'),
    (105, 'Kabir Gill', 'Ludhiana', 'MON-4K-07', 18900.00, 'Cancelled'),
    (106, 'Harpreet Sandhu', 'Patiala', 'LAP-STD-02', 42000.00, 'Delivered'),
    (107, 'Ananya Gupta', 'Chandigarh', 'CAM-Z5-03', 68000.00, 'Delivered');


==========================================
LEVEL 1: IN & NOT IN OPERATORS
==========================================
-- Questions:
-- 1. Fetch orders placed from 'Ludhiana', 'Chandigarh', or 'Patiala'.
-- 2. Fetch orders whose status is neither 'Cancelled' nor 'Pending'.

SELECT *
FROM orders
WHERE city IN ('Ludhiana', 'Chandigarh', 'Patiala');

SELECT order_id, customer_name, order_status
FROM orders
WHERE order_status NOT IN ('Cancelled', 'Pending');


==========================================
LEVEL 2: BETWEEN & NOT BETWEEN OPERATORS
==========================================
-- Questions:
-- 1. Find orders with order_amount between 15000.00 and 50000.00 (inclusive).
-- 2. Find orders whose order_id is outside the 102 to 106 range.

SELECT order_id, customer_name, order_amount
FROM orders
WHERE order_amount BETWEEN 15000.00 AND 50000.00;

SELECT order_id, customer_name, order_amount
FROM orders
WHERE order_id NOT BETWEEN 102 AND 106;


==========================================
LEVEL 3: LIKE & ILIKE PATTERN MATCHING
==========================================
-- Questions:
-- 1. Find customers whose name starts with 'Har' (% wildcard).
-- 2. Find orders where product_code has any single character before '-0' (_ wildcard).
-- 3. Case-insensitive search for 'lap' anywhere in product_code (PostgreSQL ILIKE).

SELECT order_id, customer_name, city
FROM orders
WHERE customer_name LIKE 'Har%';

SELECT order_id, customer_name, product_code
FROM orders
WHERE product_code LIKE '%_-0%';

SELECT order_id, customer_name, product_code
FROM orders
WHERE product_code ILIKE '%lap%';