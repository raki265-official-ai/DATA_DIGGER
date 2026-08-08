CREATE DATABASE DataDigger;
USE DataDigger;

-- Customers Table
CREATE TABLE Customers(
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(200)
);

-- Orders Table
CREATE TABLE Orders(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
);

-- Products Table
CREATE TABLE Products(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

-- OrderDetails Table
CREATE TABLE OrderDetails(
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),
    FOREIGN KEY(OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY(ProductID) REFERENCES Products(ProductID)
);


-- Customers
INSERT INTO Customers VALUES
(1,'Alice','alice@gmail.com','Mumbai'),
(2,'Rakesh','rakesh@gmail.com','Surat'),
(3,'Rahul','rahul@gmail.com','Delhi'),
(4,'Priya','priya@gmail.com','Pune'),
(5,'Amit','amit@gmail.com','Hyderabad');

-- Orders
INSERT INTO Orders VALUES
(101,1,'2026-08-01',1500),
(102,2,'2026-08-02',2500),
(103,3,'2026-07-20',3500),
(104,4,'2026-08-04',500),
(105,5,'2026-06-30',4200);

-- Products
INSERT INTO Products VALUES
(1,'Laptop',50000,10),
(2,'Mouse',700,50),
(3,'Keyboard',1500,25),
(4,'Headphones',2000,0),
(5,'Monitor',12000,8);

-- OrderDetails
INSERT INTO OrderDetails VALUES
(1,101,2,2,1400),
(2,102,3,1,1500),
(3,103,5,1,12000),
(4,104,2,3,2100),
(5,105,1,1,50000);


-- Customers
SELECT * FROM Customers;

UPDATE Customers
SET Address='Ahmedabad'
WHERE CustomerID=2;

DELETE FROM Customers
WHERE CustomerID=5;

SELECT * FROM Customers
WHERE Name='Alice';

-- Orders
SELECT * FROM Orders
WHERE CustomerID=2;

UPDATE Orders
SET TotalAmount=3000
WHERE OrderID=102;

DELETE FROM Orders
WHERE OrderID=104;

SELECT * FROM Orders
WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

SELECT MAX(TotalAmount) Highest,
MIN(TotalAmount) Lowest,
AVG(TotalAmount) Average
FROM Orders;

-- Products
SELECT * FROM Products
ORDER BY Price DESC;

UPDATE Products
SET Price=1800
WHERE ProductID=3;

DELETE FROM Products
WHERE Stock=0;

SELECT * FROM Products
WHERE Price BETWEEN 500 AND 2000;

SELECT MAX(Price),MIN(Price)
FROM Products;

-- OrderDetails
SELECT * FROM OrderDetails
WHERE OrderID=101;

SELECT SUM(SubTotal) AS TotalRevenue
FROM OrderDetails;

SELECT ProductID,SUM(Quantity) AS TotalSold
FROM OrderDetails
GROUP BY ProductID
ORDER BY TotalSold DESC
LIMIT 3;

SELECT ProductID,COUNT(ProductID) AS SoldCount
FROM OrderDetails
WHERE ProductID=2
GROUP BY ProductID;