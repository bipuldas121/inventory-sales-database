-- =====================================================================
-- InventorySales_CreateTables.sql
-- Creates the InventorySales database and all seven tables, with primary keys and foreign key constraints matching the relationships
-- shown in InventorySales_Planning.xlsx.
-- =====================================================================
DROP DATABASE IF EXISTS InventorySales;
CREATE DATABASE InventorySales;
USE InventorySales;

-- ---------------------------------------------------------------------
-- Categories (Reference table for product categories. No dependencies)
-- ---------------------------------------------------------------------
CREATE TABLE Categories (
    CategoryID   INT PRIMARY KEY,
    CategoryName VARCHAR(50)  NOT NULL,
    Description  VARCHAR(255)
);

-- ---------------------------------------------------------------------
-- Suppliers (Companies that supply products. No dependencies)
-- ---------------------------------------------------------------------
CREATE TABLE Suppliers (
    SupplierID   INT PRIMARY KEY,
    SupplierName VARCHAR(100) NOT NULL,
    ContactName  VARCHAR(100),
    Phone        VARCHAR(20),
    Email        VARCHAR(100),
    Address      VARCHAR(255)
);

-- ---------------------------------------------------------------------
-- Products (Depends on Categories and Suppliers)
-- ---------------------------------------------------------------------
CREATE TABLE Products (
    ProductID       INT PRIMARY KEY,
    ProductName     VARCHAR(100)   NOT NULL,
    CategoryID      INT            NOT NULL,
    SupplierID      INT            NOT NULL,
    UnitPrice       DECIMAL(10,2)  NOT NULL,
    QuantityInStock INT            NOT NULL DEFAULT 0,
    ReorderLevel    INT            NOT NULL DEFAULT 0,
    CONSTRAINT fk_products_category
        FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
    CONSTRAINT fk_products_supplier
        FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

-- ---------------------------------------------------------------------
-- Customers (People who place orders. No dependencies)
-- ---------------------------------------------------------------------
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName  VARCHAR(50)  NOT NULL,
    LastName   VARCHAR(50)  NOT NULL,
    Email      VARCHAR(100),
    Phone      VARCHAR(20),
    Address    VARCHAR(255)
);

-- ---------------------------------------------------------------------
-- Employees (Staff who process orders. No dependencies)
-- ---------------------------------------------------------------------
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName  VARCHAR(50) NOT NULL,
    LastName   VARCHAR(50) NOT NULL,
    Role       VARCHAR(50),
    HireDate   DATE
);

-- ---------------------------------------------------------------------
-- Orders (Depends on Customers and Employees)
-- ---------------------------------------------------------------------
CREATE TABLE Orders (
    OrderID    INT PRIMARY KEY,
    CustomerID INT         NOT NULL,
    EmployeeID INT         NOT NULL,
    OrderDate  DATE        NOT NULL,
    Status     VARCHAR(20) NOT NULL DEFAULT 'Pending',
    CONSTRAINT fk_orders_customer
        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    CONSTRAINT fk_orders_employee
        FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- ---------------------------------------------------------------------
-- OrderDetails (Depends on Orders and Products)
-- ---------------------------------------------------------------------
CREATE TABLE OrderDetails (
    OrderDetailID INT        PRIMARY KEY,
    OrderID       INT           NOT NULL,
    ProductID     INT           NOT NULL,
    Quantity      INT           NOT NULL,
    UnitPrice     DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_orderdetails_order
        FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    CONSTRAINT fk_orderdetails_product
        FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);