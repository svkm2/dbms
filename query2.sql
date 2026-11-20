CREATE DATABASE Hospital;
USE Hospital;


CREATE TABLE Patient (
    Patient_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Disease VARCHAR(50),
    Fees INT
);


INSERT INTO Patient VALUES
(1,'Rahul',25,'Male','Fever',500),
(2,'Amit',30,'Male','Cold',600),
(3,'Priya',22,'Female','Sugar',700),
(4,'Sneha',28,'Female','Malaria',800),
(5,'Rohit',35,'Male','Cough',400);


SELECT * FROM Patient;


UPDATE Patient
SET Fees=1000
WHERE Patient_ID=1;


DELETE FROM Patient
WHERE Patient_ID=5;


ALTER TABLE Patient
ADD Contact VARCHAR(15);


DESC Patient;


SELECT * FROM Patient;
