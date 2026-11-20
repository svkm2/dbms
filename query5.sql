USE Company;

-- 1. Employees having salary greater than average salary
SELECT *
FROM Employee
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employee
);

-- 2. Employee having maximum salary
SELECT *
FROM Employee
WHERE Salary = (
    SELECT MAX(Salary)
    FROM Employee
);

-- 3. Employees working in IT department
SELECT *
FROM Employee
WHERE Department = (
    SELECT Department
    FROM Employee
    WHERE Employee_Name = 'Priya'
);

-- 4. Employees having salary greater than Rahul
SELECT *
FROM Employee
WHERE Salary > (
    SELECT Salary
    FROM Employee
    WHERE Employee_Name = 'Rahul'
);

-- 5. Employees working in same department as Rahul
SELECT *
FROM Employee
WHERE Department = (
    SELECT Department
    FROM Employee
    WHERE Employee_Name = 'Rahul'
);
