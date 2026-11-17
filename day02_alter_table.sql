==========================================
Day 02: Modifying Table Structure with ALTER TABLE (PostgreSQL)
Author: Deep
==========================================

==========================================
SETUP: Create Initial Table & Insert Data
==========================================
-- Question: Create a table named 'emp' with columns for ID, Name, Age, Department, and Salary, 
-- and insert 6 sample records.

CREATE TABLE emp (
    "emp_Id" INT PRIMARY KEY,
    "emp_Name" VARCHAR(50) NOT NULL,
    "emp_Age" INT NOT NULL,
    "emp_dept" VARCHAR(50),
    "salary" NUMERIC(10,2)
);

INSERT INTO emp 
("emp_Id", "emp_Name", "emp_Age", "emp_dept", "salary")
VALUES
    (1, 'sam', 23, 'Finance', 20000),
    (2, 'joe', 22, 'Finance', 21000),
    (3, 'smith', 23, 'Loan', 19000),
    (4, 'lee', 25, 'Loan', 22000),
    (5, 'austin', 21, 'Audit', 180000),
    (6, 'Brace', 20, 'MIS', 15000);


==========================================
LEVEL 1: ADD COLUMN
==========================================
-- Questions:
-- 1. Add a new column 'email' with data type VARCHAR(100).
-- 2. Add a column 'joining_date' with DATE data type.
-- 3. Add a column 'city' with VARCHAR(50) data type.

ALTER TABLE emp
    ADD COLUMN email VARCHAR(100),
    ADD COLUMN joining_date DATE,
    ADD COLUMN city VARCHAR(50);


==========================================
LEVEL 2: RENAME COLUMN
==========================================
-- Questions:
-- 1. Rename column 'emp_Name' to 'employee_name'.
-- 2. Rename column 'emp_dept' to 'department_name'.

ALTER TABLE emp
    RENAME COLUMN "emp_Name" TO employee_name;

ALTER TABLE emp
    RENAME COLUMN "emp_dept" TO department_name;


==========================================
LEVEL 3: MODIFY COLUMN DATA TYPES
==========================================
-- Questions:
-- 1. Change 'salary' data type from NUMERIC(10,2) to NUMERIC(12,2).
-- 2. Increase 'employee_name' length from VARCHAR(50) to VARCHAR(100).
-- 3. Change 'emp_Age' data type from INT to SMALLINT.

ALTER TABLE emp
    ALTER COLUMN salary TYPE NUMERIC(12,2),
    ALTER COLUMN employee_name TYPE VARCHAR(100),
    ALTER COLUMN "emp_Age" TYPE SMALLINT;


==========================================
LEVEL 4: SET DEFAULT VALUES
==========================================
-- Questions:
-- 1. Set a default value of 15000 for the 'salary' column.
-- 2. Set a default value of 'Ludhiana' for the 'city' column.
-- Note: SET DEFAULT only applies to future INSERTs, not existing rows.

ALTER TABLE emp
    ALTER COLUMN salary SET DEFAULT 15000,
    ALTER COLUMN city SET DEFAULT 'Ludhiana';


==========================================
LEVEL 5: DROP COLUMN & DROP DEFAULT
==========================================
-- Questions:
-- 1. Remove the 'joining_date' column from the table.
-- 2. Remove the default value constraint from the 'salary' column.

ALTER TABLE emp
    DROP COLUMN joining_date;

ALTER TABLE emp
    ALTER COLUMN salary DROP DEFAULT;

==========================================
