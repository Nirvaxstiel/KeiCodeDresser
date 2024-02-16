-- SQL Example for MySQL
CREATE TABLE Customers (
    CustomerID int NOT NULL AUTO_INCREMENT,
    CustomerName varchar(255) NOT NULL,
    ContactName varchar(255),
    Country varchar(255),
    PRIMARY KEY (CustomerID)
);

CREATE TABLE Orders (
    OrderID int NOT NULL AUTO_INCREMENT,
    CustomerID int,
    OrderDate date NOT NULL,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert sample data into Customers and Orders

-- Query to find customers with more than 5 orders
SELECT 
     C.CustomerName
    ,COUNT(O.OrderID) AS NumberOfOrders
    FROM Customers C
    JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID
HAVING COUNT(O.OrderID) > 5;
