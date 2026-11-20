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

DELIMITER //

CREATE PROCEDURE DisplayEmployee()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE id INT;
    DECLARE name VARCHAR(50);
    DECLARE dept VARCHAR(50);
    DECLARE sal INT;

    DECLARE cur CURSOR FOR
    SELECT Employee_ID, Employee_Name,
           Department, Salary
    FROM Employee;

    DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET done = 1;

    OPEN cur;

    read_loop: LOOP

        FETCH cur INTO id, name, dept, sal;

        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        SELECT id AS Employee_ID,
               name AS Employee_Name,
               dept AS Department,
               sal AS Salary;

    END LOOP;

    CLOSE cur;
END //

DELIMITER ;

CALL DisplayEmployee();
