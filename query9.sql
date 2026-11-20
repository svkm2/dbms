CREATE DATABASE Shop;

USE Shop;

CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Price INT,
    Quantity INT
);

INSERT INTO Product VALUES
(1, 'Laptop', 50000, 10),
(2, 'Mobile', 20000, 15),
(3, 'Keyboard', 1000, 20),
(4, 'Mouse', 500, 25),
(5, 'Monitor', 12000, 8);


DELIMITER //

CREATE PROCEDURE DisplayProduct()
BEGIN
    SELECT * FROM Product;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE InsertProduct(
    IN id INT,
    IN pname VARCHAR(50),
    IN pprice INT,
    IN qty INT
)
BEGIN
    INSERT INTO Product VALUES
    (id, pname, pprice, qty);
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE UpdateProduct(
    IN id INT,
    IN pprice INT
)
BEGIN
    UPDATE Product
    SET Price = pprice
    WHERE Product_ID = id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE DeleteProduct(
    IN id INT
)
BEGIN
    DELETE FROM Product
    WHERE Product_ID = id;
END //

DELIMITER ;



CALL DisplayProduct();

CALL InsertProduct(6, 'Tablet', 15000, 12);

CALL UpdateProduct(1, 55000);

CALL DeleteProduct(5);

CALL DisplayProduct();
