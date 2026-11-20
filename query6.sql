CREATE DATABASE Company;

USE Company;

CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50)
);

CREATE TABLE Employee (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(50),
    Dept_ID INT,
    Salary INT
);

INSERT INTO Department VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Sales'),
(4, 'Finance');

INSERT INTO Employee VALUES
(101, 'Rahul', 1, 30000),
(102, 'Amit', 2, 25000),
(103, 'Priya', 1, 40000),
(104, 'Sneha', 3, 35000),
(105, 'Rohit', 2, 28000),
(106, 'Kiran', 5, 32000);

-- 1. INNER JOIN
SELECT *
FROM Employee
INNER JOIN Department
ON Employee.Dept_ID = Department.Dept_ID;

-- 2. LEFT JOIN
SELECT *
FROM Employee
LEFT JOIN Department
ON Employee.Dept_ID = Department.Dept_ID;

-- 3. RIGHT JOIN
SELECT *
FROM Employee
RIGHT JOIN Department
ON Employee.Dept_ID = Department.Dept_ID;

-- 4. CROSS JOIN
SELECT *
FROM Employee
CROSS JOIN Department;

-- 5. FULL OUTER JOIN using UNION
SELECT *
FROM Employee
LEFT JOIN Department
ON Employee.Dept_ID = Department.Dept_ID

UNION

SELECT *
FROM Employee
RIGHT JOIN Department
ON Employee.Dept_ID = Department.Dept_ID;
