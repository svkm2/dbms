CREATE DATABASE Library;
USE Library;

CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Book_Name VARCHAR(50),
    Author VARCHAR(50),
    Price INT,
    Quantity INT
);

INSERT INTO Books VALUES
(1,'C','ABC',400,10),
(2,'Java','XYZ',600,5),
(3,'Python','ABC',700,8),
(4,'DBMS','XYZ',300,6),
(5,'OS','ABC',800,4);


SELECT * FROM Books;


UPDATE Books
SET Price=500
WHERE Book_ID=1;


DELETE FROM Books
WHERE Book_ID=5;


ALTER TABLE Books
ADD Publisher VARCHAR(50);


SELECT * FROM Books
WHERE Price>500;
