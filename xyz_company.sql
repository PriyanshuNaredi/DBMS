CREATE DATABASE IF NOT EXISTS xyz_company;

USE xyz_company;

CREATE TABLE employee(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary FLOAT NOT NULL
);

INSERT INTO employee(id, name, salary) VALUES 
(1,"Adam", 25000),
(2, "John", 30000),
(3, "Henry", 50000);

SELECT * FROM employee;





CREATE TABLE temp (
cust_id int,
FOREIGN KEY (cust_id) references customer(id)
);

CREATE TABLE city (
id INT PRIMARY KEY,
city VARCHAR(50),
age INT,
CONSTRAINT age_check CHECK (age >= 18 AND city="Delhi")
);

CREATE TABLE newTab (
age INT CHECK (age >= 18),
);