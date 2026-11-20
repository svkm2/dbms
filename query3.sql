CREATE DATABASE Bank;
USE Bank;


CREATE TABLE Account (
    Account_No INT PRIMARY KEY,
    Account_Name VARCHAR(50),
    Balance INT
);


INSERT INTO Account VALUES
(101,'Rahul',5000),
(102,'Amit',6000),
(103,'Priya',7000),
(104,'Sneha',8000),
(105,'Rohit',9000);

DELIMITER //

-- Create withdrawal procedure
CREATE PROCEDURE Withdraw(
    IN acc INT,
    IN amt INT
)
BEGIN
    DECLARE bal INT;
    DECLARE total INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SELECT 'Error: Account not found or insufficient balance'
        AS Message;
    END;

    SELECT COUNT(*) INTO total
    FROM Account
    WHERE Account_No=acc;

    IF total=0 THEN
        SIGNAL SQLSTATE '45000';

    ELSE
        SELECT Balance INTO bal
        FROM Account
        WHERE Account_No=acc;

        IF amt>bal OR amt<=0 THEN
            SIGNAL SQLSTATE '45000';

        ELSE
            UPDATE Account
            SET Balance=Balance-amt
            WHERE Account_No=acc;

            SELECT 'Withdrawal Successful' AS Message;
        END IF;
    END IF;
END //

DELIMITER ;


CALL Withdraw(101,1000);


SELECT * FROM Account;


CALL Withdraw(101,10000);


CALL Withdraw(999,500);
