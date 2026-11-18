==========================================
Day 03: Filtering & Querying Data with SELECT, DISTINCT, WHERE & Operators (PostgreSQL)
Author: Deep
==========================================

==========================================
SETUP: Create Initial Table & Insert Data
==========================================
-- Question: Create an 'employees' table and insert sample records (including duplicate departments for DISTINCT testing).

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary NUMERIC(10,2),
    city VARCHAR(50),
    experience_years INT
);

INSERT INTO employees (emp_id, emp_name, department, salary, city, experience_years)
VALUES
    (1, 'Aarav', 'IT', 65000, 'Ludhiana', 3),
    (2, 'Simran', 'Finance', 72000, 'Chandigarh', 5),
    (3, 'Rohan', 'IT', 48000, 'Ludhiana', 1),
    (4, 'Neha', 'HR', 55000, 'Delhi', 4),
    (5, 'Kabir', 'Finance', 80000, 'Chandigarh', 6),
    (6, 'Priya', 'IT', 60000, 'Delhi', 2),
    (7, 'Amit', 'HR', 45000, 'Ludhiana', 1);


==========================================
LEVEL 1: DISTINCT (Removing Duplicates)
==========================================
-- Questions:
-- 1. Fetch all unique departments from the employees table.
-- 2. Fetch unique combinations of department and city.

SELECT DISTINCT department 
FROM employees;

SELECT DISTINCT department, city 
FROM employees;


==========================================
LEVEL 2: WHERE CLAUSE & COMPARISON OPERATORS
==========================================
-- Questions:
-- 1. Find employees whose salary is greater than 60000.
-- 2. Find employees whose department is NOT 'HR' (using !=).
-- 3. Find employees with experience less than or equal to 3 years.

SELECT * 
FROM employees 
WHERE salary > 60000;

SELECT * 
FROM employees 
WHERE department != 'HR';

SELECT * 
FROM employees 
WHERE experience_years <= 3;


==========================================
LEVEL 3: LOGICAL OPERATORS (AND, OR, NOT)
==========================================
-- Questions:
-- 1. Find employees in the 'IT' department earning more than 50000.
-- 2. Find employees who work in either 'Ludhiana' OR 'Chandigarh'.
-- 3. Find employees who are NOT in the 'IT' department.

SELECT * 
FROM employees 
WHERE department = 'IT' AND salary > 50000;

SELECT * 
FROM employees 
WHERE city = 'Ludhiana' OR city = 'Chandigarh';

SELECT * 
FROM employees 
WHERE NOT department = 'IT';


==========================================
LEVEL 4: SPECIAL OPERATORS (BETWEEN, IN)
==========================================
-- Questions:
-- 1. Find employees with a salary between 50000 and 75000.
-- 2. Find employees working in 'IT' or 'HR' using the IN operator.

SELECT * 
FROM employees 
WHERE salary BETWEEN 50000 AND 75000;

SELECT * 
FROM employees 
WHERE department IN ('IT', 'HR');


==========================================
LEVEL 5: PATTERN MATCHING WITH LIKE
==========================================
-- Questions:
-- 1. Find employees whose name starts with the letter 'A' (using wildcard %).
-- 2. Find employees whose name ends with the letter 'a'.

SELECT * 
FROM employees 
WHERE emp_name LIKE 'A%';

SELECT * 
FROM employees 
WHERE emp_name LIKE '%a';


==========================================