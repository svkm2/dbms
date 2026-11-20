CREATE DATABASE Bank;

USE Bank;

CREATE TABLE Account (
    Account_ID INT PRIMARY KEY,
    Account_Name VARCHAR(50),
    Balance INT
);

CREATE TABLE Account_Log (
    Log_ID INT AUTO_INCREMENT PRIMARY KEY,
    Account_ID INT,
    Action VARCHAR(20),
    Old_Balance INT,
    New_Balance INT,
    Log_Time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Trigger for INSERT
DELIMITER //

CREATE TRIGGER after_account_insert
AFTER INSERT ON Account
FOR EACH ROW
BEGIN
    INSERT INTO Account_Log
    (Account_ID, Action, Old_Balance, New_Balance)
    VALUES
    (NEW.Account_ID, 'INSERT', NULL, NEW.Balance);
END //

DELIMITER ;

-- Trigger for UPDATE
DELIMITER //

CREATE TRIGGER after_account_update
AFTER UPDATE ON Account
FOR EACH ROW
BEGIN
    INSERT INTO Account_Log
    (Account_ID, Action, Old_Balance, New_Balance)
    VALUES
    (NEW.Account_ID, 'UPDATE', OLD.Balance, NEW.Balance);
END //

DELIMITER ;

-- Insert records
INSERT INTO Account VALUES
(1, 'Rahul', 5000),
(2, 'Amit', 7000),
(3, 'Priya', 3000),
(4, 'Sneha', 9000),
(5, 'Rohit', 6000);

-- Update account
UPDATE Account
SET Balance = 8000
WHERE Account_ID = 1;

-- Display account records
SELECT * FROM Account;

-- Display log records
SELECT * FROM Account_Log;
