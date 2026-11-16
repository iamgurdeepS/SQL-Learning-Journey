==========================================
Day 01: Table Creation, Data Manipulation & Querying
Author: Deep
==========================================

1. CREATE TABLE: Build the structure

CREATE TABLE emp
(
    "emp_Id" INT8 PRIMARY KEY,
    "emp_Name" VARCHAR(50) NOT NULL,
    "emp_Age" INT8 NOT NULL,
    "emp_dept" VARCHAR(50),
    "salary" NUMERIC
);
==========================================

2. INSERT: Add records into the table

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

3. UPDATE: Modify an existing record (Always use WHERE!)

UPDATE emp
SET "emp_Name" = 'Brux'
WHERE "emp_Id" = 6;
==========================================

4. DELETE: Remove a specific record (Always use WHERE!)

DELETE FROM emp
WHERE "emp_Id" = 6;

==========================================
