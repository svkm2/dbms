CREATE DATABASE Company;

USE Company;

CREATE TABLE Employee (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO Employee VALUES
(1, 'Rahul', 'IT', 30000),
(2, 'Amit', 'HR', 25000),
(3, 'Priya', 'IT', 40000),
(4, 'Sneha', 'Sales', 35000),
(5, 'Rohit', 'HR', 28000);

-- 1. Total Salary
SELECT SUM(Salary) AS Total_Salary
FROM Employee;

-- 2. Average Salary
SELECT AVG(Salary) AS Average_Salary
FROM Employee;

-- 3. Employee Names in Uppercase
SELECT UPPER(Employee_Name)
FROM Employee;

-- 4. Minimum Salary
SELECT MIN(Salary) AS Minimum_Salary
FROM Employee;

-- 5. Department-wise Employee Count
SELECT Department, COUNT(*) AS Total_Employees
FROM Employee
GROUP BY Department;

-- Additional functions
SELECT MAX(Salary) AS Maximum_Salary
FROM Employee;

SELECT LOWER(Employee_Name)
FROM Employee;

SELECT ROUND(AVG(Salary), 2)
FROM Employee;
