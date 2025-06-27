CREATE DATABASE SalesDB;
USE SalesDB;

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    Product VARCHAR(50),
    Category VARCHAR(30),
    Quantity INT,
    Price DECIMAL(10,2),
    SaleDate DATE
);

INSERT INTO Sales VALUES
(1, 'Rice', 'Grocery', 10, 50.00, '2025-06-01'),
(2, 'Milk', 'Dairy', 20, 25.00, '2025-06-02'),
(3, 'Oil', 'Grocery', 5, 110.00, '2025-06-03'),
(4, 'Bread', 'Bakery', 15, 30.00, '2025-06-03'),
(5, 'Curd', 'Dairy', 10, 20.00, '2025-06-04')


SELECT SUM(Quantity) AS Total_Quantity FROM Sales;

SELECT AVG(Price) AS Average_Price FROM Sales;

SELECT COUNT(*) AS Total_Records FROM Sales;

SELECT Category, SUM(Quantity) AS Total_Sold
FROM Sales
GROUP BY Category;
SELECT Category, AVG(Price) AS Avg_Price
FROM Sales
GROUP BY Category;

SELECT Category, SUM(Quantity) AS Total_Sold
FROM Sales
GROUP BY Category
HAVING SUM(Quantity) > 20;

SELECT Category, COUNT(Product) AS Product_Count
FROM Sales
GROUP BY Category;
