-- =====================================================================
-- InventorySales_Indexes.sql
-- Creates indexes on columns that speed up common lookups, filters, and sorts.
--
-- Note: MySQL automatically creates an index on every foreign key column the moment the FK constraint is created
--  and every PRIMARY KEY is indexed automatically too. Re-indexing those here would just create a redundant duplicate index
-- =====================================================================
USE InventorySales;

-- Speeds up filtering/sorting orders by date, e.g. "orders from June 2026"
CREATE INDEX idx_orders_orderdate ON Orders (OrderDate);

-- Speeds up filtering orders by status, e.g. "all pending orders"
CREATE INDEX idx_orders_status ON Orders (Status);

-- Speeds up searching for a product by name
CREATE INDEX idx_products_productname ON Products (ProductName);

-- Speeds up looking up a customer by last name
CREATE INDEX idx_customers_lastname ON Customers (LastName);

-- Speeds up looking up an employee by last name
CREATE INDEX idx_employees_lastname ON Employees (LastName);

-- Speeds up looking up a supplier by name
CREATE INDEX idx_suppliers_suppliername ON Suppliers (SupplierName);

-- Composite index speeds up reports like "this employee's orders in a given date range" (filters on EmployeeID, then sorts/filters OrderDate)
CREATE INDEX idx_orders_employee_date ON Orders (EmployeeID, OrderDate);