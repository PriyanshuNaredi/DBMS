-- Active: 1719732080902@@127.0.0.1@3306@join_
CREATE TABLE student ( id INT PRIMARY KEY, name VARCHAR(50) );

INSERT INTO
    student
VALUES (101, "Aman"),
    (102, "bob"),
    (103, "naman");

CREATE Table course (
    id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO
    course
VALUES (105, "maths"),
    (102, "english"),
    (103, "science"),
    (107, "cs");

-- Inner Join

SELECT * FROM student as stu INNER JOIN course as c ON stu.id = c.id;

-- Left Join
SELECT * FROM student as stu LEFT JOIN course as c ON stu.id = c.id;

--  Right Join
SELECT * FROM student as stu RIGHT JOIN course as c ON stu.id = c.id;

-- Full Join
SELECT *
FROM student as stu
    LEFT JOIN course as c ON stu.id = c.id
UNION
SELECT *
FROM student as stu
    RIGHT JOIN course as c ON stu.id = c.id;

-- Exclusive Left
SELECT *
FROM student as stu
    LEFT JOIN course as c ON stu.id = c.id
WHERE
    c.id IS NULL;

-- Exclusive Right
SELECT *
FROM student as stu
    RIGHT JOIN course as c ON stu.id = c.id
WHERE
    stu.id IS NULL;

-- Full Exclusive Join
select *
from student as a
    left join course as b on a.id = b.id
where
    b.id is null
union
select *
from student as a
    right join course as b on a.id = b.id
where
    a.id is null;

--

CREATE Table employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO
    employee
VALUES (101, "adam", 103),
    (102, "bob", 104),
    (103, "casey", NULL),
    (104, "donald", 103);

-- Self Join
SELECT a.name as manager_name, b.name FROM employee as a 
JOIN employee as b
ON a.id = b.manager_id;

-- Union

SELECT name from employee
UNION
SELECT name FROM employee;

-- Union All
SELECT name from employee
UNION ALL
SELECT name FROM employee;

