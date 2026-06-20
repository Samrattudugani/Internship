TASK - PostgreSQL

-- ==========================================
-- TASK 1: STUDENT MANAGEMENT SYSTEM
-- ==========================================

DROP TABLE IF EXISTS marks CASCADE;
DROP TABLE IF EXISTS student_courses CASCADE;
DROP TABLE IF EXISTS courses CASCADE;
DROP TABLE IF EXISTS students CASCADE;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    branch VARCHAR(50),
    marks INT
);

INSERT INTO students VALUES
(1,'Karthik','karthika@gmail.com','AIML',85),
(2,'Anjali','anjali@gmail.com','CSE',78),
(3,'Samrat','samrat@gmail.com','AIML',99),
(4,'Priya','priya@gmail.com','IT',90),
(5,'Sai','sai@gmail.com','AIML',72),
(6,'Ravi','ravi@gmail.com','CSE',55),
(7,'Meena','meena@gmail.com','ECE',88),
(8,'Kiran','kiran@gmail.com','IT',60),
(9,'Divya','divya@gmail.com','AIML',95),
(10,'Arjun','arjun@gmail.com','CSE',70);

-- Display all students
SELECT * FROM students;

-- Update marks
UPDATE students
SET marks = 95
WHERE id = 1;

-- Students with marks > 75
SELECT *
FROM students
WHERE marks > 75;


-- ==========================================
-- TASK 2: COURSE ENROLLMENT SYSTEM
-- ==========================================

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100)
);

CREATE TABLE student_courses (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO courses VALUES
(101,'Database Management System'),
(102,'Python Programming'),
(103,'Artificial Intelligence'),
(104,'Web Development'),
(105,'Machine Learning');

INSERT INTO student_courses VALUES
(1,1,101),
(2,3,103),
(3,2,102),
(4,3,105),
(5,5,101),
(6,6,102),
(7,7,103),
(8,8,104),
(9,9,105),
(10,10,101);

-- Student Course Details
SELECT
    s.id,
    s.name,
    s.branch,
    c.course_name
FROM students s
JOIN student_courses sc
ON s.id = sc.student_id
JOIN courses c
ON c.course_id = sc.course_id;


-- ==========================================
-- TASK 3: JOIN QUERIES PRACTICE
-- ==========================================

-- INNER JOIN
SELECT
    s.name AS student_name,
    c.course_name AS enrolled_course
FROM students s
INNER JOIN student_courses sc
ON s.id = sc.student_id
INNER JOIN courses c
ON sc.course_id = c.course_id;

-- LEFT JOIN
SELECT
    s.name AS student_name,
    c.course_name AS enrolled_course
FROM students s
LEFT JOIN student_courses sc
ON s.id = sc.student_id
LEFT JOIN courses c
ON sc.course_id = c.course_id;

-- Count students in each course
SELECT
    c.course_name,
    COUNT(sc.student_id) AS total_students
FROM courses c
LEFT JOIN student_courses sc
ON c.course_id = sc.course_id
GROUP BY c.course_name;

-- Course-wise student list
SELECT
    c.course_name,
    s.name AS student_name
FROM courses c
JOIN student_courses sc
ON c.course_id = sc.course_id
JOIN students s
ON s.id = sc.student_id
ORDER BY c.course_name;


-- ==========================================
-- TASK 4: STUDENT PERFORMANCE MANAGEMENT
-- ==========================================

CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    course_name VARCHAR(100),
    marks INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO marks VALUES
(1,1,101,'Database Management System',85),
(2,3,103,'Artificial Intelligence',90),
(3,2,102,'Python Programming',78),
(4,3,105,'Machine Learning',95),
(5,5,101,'Database Management System',72),
(6,6,102,'Python Programming',65),
(7,7,103,'Artificial Intelligence',88),
(8,8,104,'Web Development',80),
(9,9,105,'Machine Learning',96),
(10,10,101,'Database Management System',70);

-- Student Performance Details
SELECT
    s.id AS student_id,
    s.name AS student_name,
    c.course_id,
    c.course_name,
    m.marks
FROM students s
JOIN marks m
ON s.id = m.student_id
JOIN courses c
ON c.course_id = m.course_id;

-- Total Marks of Each Student
SELECT
    s.id AS student_id,
    s.name AS student_name,
    SUM(m.marks) AS total_marks
FROM students s
JOIN marks m
ON s.id = m.student_id
GROUP BY s.id, s.name;

-- Course-wise Average Marks
SELECT
    c.course_name,
    AVG(m.marks) AS average_marks
FROM courses c
JOIN marks m
ON c.course_id = m.course_id
GROUP BY c.course_name;

-- Students Sorted by Total Marks
SELECT
    s.id AS student_id,
    s.name AS student_name,
    SUM(m.marks) AS total_marks
FROM students s
JOIN marks m
ON s.id = m.student_id
GROUP BY s.id, s.name
ORDER BY total_marks DESC;




-- -- LIBRARY MANAGEMENT -- 
-- CREATE TABLE students_Data(
-- 	id INT PRIMARY KEY,
-- 	name VARCHAR(50),
-- 	email VARCHAR(50),
-- 	Address VARCHAR(1000)
-- );
-- INSERT INTO students_Data VALUES
-- (1, 'Kruthika', 'kruthika@gmail.com', 'Hyderabad'),
-- (2, 'Anjali', 'anjali@gmail.com', 'Vijayawada'),
-- (3, 'Samrat', 'samrat@gmail.com', 'Warangal'),
-- (4, 'Priya', 'priya@gmail.com', 'Guntur'),
-- (5, 'Sai', 'sai@gmail.com', 'Nizamabad'),
-- (6, 'Ravi', 'ravi@gmail.com', 'Karimnagar'),
-- (7, 'Meena', 'meena@gmail.com', 'Khammam'),
-- (8, 'Kiran', 'kiran@gmail.com', 'Visakhapatnam'),
-- (9, 'Divya', 'divya@gmail.com', 'Tirupati'),
-- (10, 'Arjun', 'arjun@gmail.com', 'Kurnool');

-- SELECT * FROM students_Data ;

-- CREATE TABLE BOOKS(
-- 	bk_id INT PRIMARY KEY,
-- 	bk_name VARCHAR(50),
-- 	bk_author VARCHAR(50),
-- 	bk_category VARCHAR(100)
-- );
-- INSERT INTO BOOKS VALUES
-- (101, 'Database Systems', 'Korth', 'Database'),
-- (102, 'Python Programming', 'Mark Lutz', 'Programming'),
-- (103, 'Artificial Intelligence', 'Stuart Russell', 'AI'),
-- (104, 'Machine Learning', 'Tom Mitchell', 'AI'),
-- (105, 'Java Complete Reference', 'Herbert Schildt', 'Programming'); 

-- SELECT*FROM BOOKS ;

-- CREATE TABLE BOOK_ISSUES(
--     issue_id INT PRIMARY KEY,
--     student_id INT,
--     bk_id INT,
--     issue_date DATE,
--     FOREIGN KEY(student_id) REFERENCES students_Data(id),
--     FOREIGN KEY(bk_id) REFERENCES BOOKS(bk_id)
-- );

-- INSERT INTO BOOK_ISSUES VALUES
-- (1, 1, 101, '2026-06-01'),
-- (2, 1, 103, '2026-06-02'),
-- (3, 2, 102, '2026-06-01'),
-- (4, 3, 104, '2026-06-03'),
-- (5, 4, 105, '2026-06-04'),
-- (6, 5, 101, '2026-06-05'); 

-- SELECT
--     s.name,
--     b.bk_name,
--     bi.issue_date
-- FROM students_Data s
-- JOIN BOOK_ISSUES bi
-- ON s.id = bi.student_id
-- JOIN BOOKS b
-- ON b.bk_id = bi.bk_id;

