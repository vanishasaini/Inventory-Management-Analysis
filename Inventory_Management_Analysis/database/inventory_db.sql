CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName TEXT,
    Category TEXT,
    ReorderLevel INT
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    QuantitySold INT,
    SaleDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    StockOnHand INT,
    LastUpdated DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
