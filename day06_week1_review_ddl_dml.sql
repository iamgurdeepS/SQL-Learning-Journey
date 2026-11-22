==========================================
Day 06: Week 1 Consolidation — DDL, DML & ALTER TABLE
Author: Deep
==========================================

==========================================
PART 1: CREATE TABLE & ALTER TABLE
==========================================
-- Question: Create a 'students_lab' table, add a 'city' column, rename 'full_name' to 'student_name',
-- and set a default city value of 'Ludhiana'.

CREATE TABLE students_lab (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(60) NOT NULL,
    course VARCHAR(40),
    marks INT
);

ALTER TABLE students_lab
    ADD COLUMN city VARCHAR(50),
    ALTER COLUMN city SET DEFAULT 'Ludhiana';

ALTER TABLE students_lab
    RENAME COLUMN full_name TO student_name;


==========================================
PART 2: INSERT, UPDATE & DELETE
==========================================
-- Questions:
-- 1. Insert 5 student records (leaving city to use default where omitted).
-- 2. Update marks for student_id = 2 to 88.
-- 3. Delete the record where student_id = 5.

INSERT INTO students_lab (student_id, student_name, course, marks)
VALUES
    (1, 'Amanpreet Kaur', 'BCA', 82),
    (2, 'Rahul Sharma', 'BCA', 74),
    (3, 'Kiran Gill', 'BCA', 91),
    (4, 'Vikramjit Singh', 'BCA', 68),
    (5, 'Test Student', 'BCA', 40);

UPDATE students_lab
SET marks = 88
WHERE student_id = 2;

DELETE FROM students_lab
WHERE student_id = 5;

SELECT * FROM students_lab;

==========================================