CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments (
    department_id INT,
    department_name VARCHAR(100)
);
CREATE TABLE Location (
    location_id INT,
    location VARCHAR(30)
);
CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2)
);
ALTER TABLE Departments
ADD PRIMARY KEY (department_id);
ALTER TABLE Location
ADD PRIMARY KEY (location_id);
ALTER TABLE Employees
ADD PRIMARY KEY (employee_id);
DESC Departments;
DESC Location;
DESC Employees;
ALTER TABLE Employees
ADD email VARCHAR(100);
ALTER TABLE Employees
MODIFY designation VARCHAR(200);
ALTER TABLE Employees
DROP COLUMN age;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;
RENAME TABLE Departments TO Departments_Info;
TRUNCATE TABLE Employees;
SELECT * FROM Employees;
DROP TABLE Employees;
DROP DATABASE employee;
DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);
DESC Departments;
CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);
DESC Locations;
RENAME TABLE Location TO Locations;
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);
DESC Employees;
SELECT DATABASE();
