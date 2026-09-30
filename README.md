# MySQL Assignment 1 – DDL Commands & Constraints

## 📊 Overview

This assignment covers MySQL DDL (Data Definition Language) commands and database constraints using an Employee database.

## 🛠️ Tools Used

- MySQL
- MySQL Workbench

## 🗄️ 1. Database & Table Creation

Created the `employee` database and the following tables:

- `Departments`
- `Location`
- `Employees`

## 🔧 2. Table Alteration

- Added an `email` column
- Modified `designation` from `VARCHAR(100)` to `VARCHAR(200)`
- Dropped the `age` column
- Renamed `hire_date` to `date_of_joining`

## 🔄 3. Table Renaming

- `Departments` → `Departments_Info`
- `Location` → `Locations`

## 🗑️ 4. Table Truncation

Used `TRUNCATE TABLE` to remove all records from the `Employees` table while retaining its structure.

## ❌ 5. Database & Table Dropping

- Dropped the `Employees` table
- Dropped the `employee` database

## 🔐 6. Constraints

### Departments
- `department_id` → Primary Key
- `department_name` → NOT NULL and UNIQUE

### Location
- `location_id` → AUTO_INCREMENT and Primary Key
- `location` → NOT NULL and UNIQUE

### Employees
- `employee_id` → Primary Key
- `employee_name` → NOT NULL
- `gender` → CHECK (`M` or `F`)
- `age` → CHECK (18 or above)
- `hire_date` → DEFAULT current date
- `department_id` → Foreign Key referencing `Departments`
- `location_id` → Foreign Key referencing `Location`

## 🎯 Key Skills Practiced

- CREATE DATABASE
- CREATE TABLE
- ALTER TABLE
- RENAME TABLE / COLUMN
- TRUNCATE TABLE
- DROP TABLE / DATABASE
- PRIMARY KEY
- UNIQUE
- NOT NULL
- CHECK
- DEFAULT
- AUTO_INCREMENT
- FOREIGN KEY
