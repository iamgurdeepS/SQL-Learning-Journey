==========================================
Day 07: Week 1 Consolidation — SELECT, DISTINCT, WHERE, IN, BETWEEN, LIKE & ORDER BY
Author: Deep
==========================================

=========================================
SETUP: Create Courses Table & Insert Data
==========================================
-- Question: Create a 'courses_catalog' table and insert 7 records for end-of-week query practice.

CREATE TABLE courses_catalog (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(70) NOT NULL,
    track VARCHAR(40),
    duration_weeks INT,
    fee NUMERIC(10,2),
    level VARCHAR(20)
);

INSERT INTO courses_catalog (course_id, course_name, track, duration_weeks, fee, level)
VALUES
    (1, 'PostgreSQL for Analysts', 'Data', 4, 4999.00, 'Beginner'),
    (2, 'Java Core & OOP', 'Backend', 6, 6500.00, 'Beginner'),
    (3, 'C# and .NET Fundamentals', 'Backend', 8, 7999.00, 'Intermediate'),
    (4, 'Data Visualization Basics', 'Data', 3, 3500.00, 'Beginner'),
    (5, 'SQL Query Tuning', 'Data', 2, 5500.00, 'Intermediate'),
    (6, 'Operating Systems Lab', 'Core CS', 5, 4200.00, 'Intermediate'),
    (7, 'IoT Systems & Sensors', 'Hardware', 6, 7200.00, 'Beginner');


==========================================
COMPREHENSIVE PRACTICE QUERIES
==========================================
-- Questions:
-- 1. List distinct tracks available in the catalog.
-- 2. Find 'Data' track courses costing less than or equal to 5500, sorted by fee ascending.
-- 3. Find courses whose fee is BETWEEN 4000 and 7500 and level is IN ('Beginner', 'Intermediate').
-- 4. Find courses with 'SQL' or 'Data' in course_name (case-insensitive) ordered by duration_weeks DESC.

SELECT DISTINCT track
FROM courses_catalog;

SELECT course_name, duration_weeks, fee
FROM courses_catalog
WHERE track = 'Data' AND fee <= 5500
ORDER BY fee ASC;

SELECT course_name, track, level, fee
FROM courses_catalog
WHERE fee BETWEEN 4000 AND 7500
  AND level IN ('Beginner', 'Intermediate')
ORDER BY fee ASC, course_name ASC;

SELECT course_id, course_name, track, duration_weeks, fee
FROM courses_catalog
WHERE course_name ILIKE '%sql%' OR course_name ILIKE '%data%'
ORDER BY duration_weeks DESC, course_name ASC;


==========================================