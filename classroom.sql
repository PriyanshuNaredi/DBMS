CREATE DATABASE temp1;

DROP DATABASE temp1;

CREATE DATABASE temp2;

DROP DATABASE temp2;

CREATE DATABASE IF NOT EXISTS college;

USE college;

CREATE Table student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student VALUES (1, "Priyanshu");

INSERT INTO student (rollno, name) VALUES (2, "Aman"), (3, "naman");

SELECT * FROM student;

DROP TABLE student;

DROP DATABASE if EXISTS temp1;

SHOW DATABASES;

-- Example
CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO
    student (
        rollno,
        name,
        marks,
        grade,
        city
    )
VALUES (101, "anil", 78, "C", "Pune"),
    (
        102,
        "bhumika",
        93,
        "A",
        "Mumbai"
    ),
    (
        103,
        "chetan",
        85,
        "B",
        "Mumbai"
    ),
    (
        104,
        "dhruv",
        96,
        "A",
        "Delhi"
    ),
    (
        105,
        "emanuel",
        12,
        "F",
        "Delhi"
    ),
    (
        106,
        "farah",
        82,
        "B",
        "Delhi"
    );

-- Select
SELECT name, marks from student;

SELECT DISTINCT city from student;
-- unique city names only
SELECT * FROM student WHERE marks > 80;

SELECT * FROM student WHERE marks > 80 AND city = "Mumbai";

SELECT * FROM student WHERE marks + 10 > 100;

SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

SELECT * FROM student WHERE city IN ("Delhi", "Mumbai");

SELECT * FROM student WHERE city NOT IN("Delhi", "Mumbai");

SELECT * FROM student LIMIT 3;

SELECT * FROM student ORDER BY marks DESC;

SELECT * FROM student ORDER BY marks DESC LIMIT 3;

SELECT MAX(marks) FROM student;

SELECT MIN(marks) FROM student;

SELECT AVG(marks) FROM student;

SELECT COUNT(rollno) FROM student;

SELECT city FROM student GROUP BY city;

SELECT city, COUNT(name) FROM student GROUP BY city;

SELECT city, name, COUNT(name) FROM student GROUP BY city, name;

SELECT city, AVG(marks)
FROM student
GROUP BY
    city
ORDER BY AVG(marks) DESC;

SELECT grade, COUNT(rollno)
FROM student
GROUP BY
    grade
ORDER BY grade;

SELECT city, COUNT(rollno)
FROM student
GROUP BY
    city
HAVING
    MAX(marks) > 90;

SELECT city
FROM student
WHERE
    grade = "A"
GROUP BY
    city
HAVING
    MAX(marks) >= 93
ORDER BY city;

-- update
SET SQL_SAFE_UPDATES = 0;

UPDATE student SET grade = "O" WHERE grade = "A";

SELECT * FROM student;

UPDATE student SET marks = 82 WHERE rollno = 105;

UPDATE student SET grade = "B" WHERE marks BETWEEN 80 AND 90;

UPDATE student SET marks = marks + 1;

-- delete
DELETE FROM student WHERE rollno = 105;

-- Foreign Key
CREATE TABLE dept ( id INT PRIMARY KEY, name VARCHAR(50) );

CREATE TABLE teacher (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept (id)
);











