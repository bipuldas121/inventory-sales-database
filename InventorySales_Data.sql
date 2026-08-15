-- =====================================================================
-- InventorySales_Data.sql (Populates the InventorySales database with sample records)
-- Insert order follows table dependencies: reference tables first 
-- (Categories, Suppliers, Customers, Employees), then Products and Orders,
-- then OrderDetails last, since each depends on the tables before it.
-- =====================================================================
USE InventorySales;
-- ---------------------------------------------------------------------
-- Categories (10 records)
-- ---------------------------------------------------------------------
INSERT INTO Categories (CategoryID, CategoryName, Description) VALUES
(1,  'Electronics',       'Devices, gadgets, and accessories'),
(2,  'Beverages',         'Coffee, tea, and soft drinks'),
(3,  'Office Supplies',   'Stationery and office essentials'),
(4,  'Furniture',         'Desks, chairs, and shelving'),
(5,  'Cleaning Supplies', 'Janitorial and cleaning products'),
(6,  'Health & Beauty',   'Personal care and wellness items'),
(7,  'Toys & Games',      'Kids toys and board games'),
(8,  'Sporting Goods',    'Fitness and outdoor equipment'),
(9,  'Pet Supplies',      'Food and accessories for pets'),
(10, 'Grocery',           'Packaged food and pantry items');

-- ---------------------------------------------------------------------
-- Suppliers (10 records)
-- ---------------------------------------------------------------------
INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, Phone, Email, Address) VALUES
(1,  'TechSource Distributors', 'Karen Liu',      '519-555-0142', 'karen.liu@techsource.ca',      '120 Innovation Dr, London, ON'),
(2,  'Beanstalk Wholesale',     'Marco Ferreira', '519-555-0198', 'marco@beanstalkwholesale.ca',  '45 Roastery Ln, Waterloo, ON'),
(3,  'OfficePlus Supply Co.',   'Priya Nair',     '226-555-0121', 'priya.nair@officeplus.ca',     '78 Commerce Blvd, London, ON'),
(4,  'UrbanFurnish Ltd.',       'Chen Wei',       '519-555-0166', 'chen.wei@urbanfurnish.ca',     '200 Industrial Pkwy, London, ON'),
(5,  'SparkleClean Corp.',      'Denise Morrow',  '226-555-0188', 'denise@sparkleclean.ca',       '15 Riverside Rd, Kitchener, ON'),
(6,  'PureGlow Distributors',   'Amina Yusuf',    '519-555-0154', 'amina.y@pureglow.ca',          '60 Wellness Way, London, ON'),
(7,  'FunTime Toys Inc.',       'Robert Kim',     '519-555-0177', 'robert.kim@funtimetoys.ca',    '32 Playful Ave, Cambridge, ON'),
(8,  'ActiveGear Wholesale',    'Laura Bianchi',  '226-555-0145', 'laura.b@activegear.ca',        '90 Trailhead Dr, London, ON'),
(9,  'Happy Paws Supply',       'Nathan Brooks',  '519-555-0133', 'nathan.b@happypaws.ca',        '22 Barkley St, London, ON'),
(10, 'GreenPantry Foods',       'Olivia Martin',  '519-555-0119', 'olivia.m@greenpantry.ca',      '8 Harvest Cir, Woodstock, ON');

-- ---------------------------------------------------------------------
-- Customers (10 records)
-- ---------------------------------------------------------------------
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address) VALUES
(1,  'Sarah',    'Thompson', 'sarah.t@example.com',    '519-555-0110', '12 Maple St, London, ON'),
(2,  'David',    'Nguyen',   'david.n@example.com',    '519-555-0133', '88 Elm Ave, London, ON'),
(3,  'Amanda',   'Clarke',   'amanda.c@example.com',   '226-555-0177', '301 King St, London, ON'),
(4,  'Michael',  'Osei',     'michael.o@example.com',  '519-555-0142', '45 Birch Rd, London, ON'),
(5,  'Jennifer', 'Wu',       'jennifer.w@example.com', '226-555-0198', '77 Pine St, Woodstock, ON'),
(6,  'Carlos',   'Ramirez',  'carlos.r@example.com',   '519-555-0165', '19 Willow Cres, London, ON'),
(7,  'Emily',    'Davis',    'emily.d@example.com',    '226-555-0154', '250 Oak Ave, Ingersoll, ON'),
(8,  'Brian',    'Foster',   'brian.f@example.com',    '519-555-0187', '8 Chestnut Dr, London, ON'),
(9,  'Natasha',  'Petrova',  'natasha.p@example.com',  '519-555-0121', '63 Cedar Ln, London, ON'),
(10, 'Kevin',    'Brown',    'kevin.b@example.com',    '226-555-0143', '400 Dundas St, London, ON');

-- ---------------------------------------------------------------------
-- Employees (10 records)
-- ---------------------------------------------------------------------
INSERT INTO Employees (EmployeeID, FirstName, LastName, Role, HireDate) VALUES
(1,  'Jason',   'Reyes',     'Sales Associate',    '2023-03-14'),
(2,  'Michelle','Osei',      'Store Manager',      '2021-07-01'),
(3,  'Tom',     'Bradley',   'Sales Associate',    '2024-01-09'),
(4,  'Angela',  'Kim',       'Cashier',            '2022-11-20'),
(5,  'Derek',   'Chan',      'Sales Associate',    '2023-06-05'),
(6,  'Priya',   'Sharma',    'Inventory Clerk',    '2022-02-14'),
(7,  'Marcus',  'Long',      'Sales Associate',    '2024-04-18'),
(8,  'Fatima',  'Haidari',   'Assistant Manager',  '2020-09-30'),
(9,  'Liam',    'O''Connor', 'Cashier',            '2023-10-02'),
(10, 'Grace',   'Park',      'Sales Associate',    '2021-12-11');

-- ---------------------------------------------------------------------
-- Products (12 records) -- CategoryID/SupplierID reference tables above
-- ---------------------------------------------------------------------
INSERT INTO Products (ProductID, ProductName, CategoryID, SupplierID, UnitPrice, QuantityInStock, ReorderLevel) VALUES
(1,  'Wireless Mouse',              1, 1,  24.99, 150, 30),
(2,  'USB-C Charging Cable',        1, 1,  12.50, 200, 50),
(3,  'Colombian Coffee Beans 1kg',  2, 2,  18.75,  80, 20),
(4,  'Green Tea Box (20 bags)',     2, 2,   6.25, 120, 30),
(5,  'Ballpoint Pens (Box of 12)',  3, 3,   4.50, 300, 60),
(6,  'Sticky Notes (Pack of 6)',    3, 3,   3.75, 250, 50),
(7,  'Ergonomic Office Chair',      4, 4, 189.99,  25,  5),
(8,  'Standing Desk',               4, 4, 349.00,  15,  3),
(9,  'All-Purpose Cleaner 1L',      5, 5,   5.99, 100, 25),
(10, 'Microfiber Cloth (Pack of 10)', 5, 5, 8.99,  90, 20),
(11, 'Yoga Mat',                    8, 8,  29.99,  60, 15),
(12, 'Dog Food 5kg',                9, 9,  34.50,  45, 10);

-- ---------------------------------------------------------------------
-- Orders (12 records) -- CustomerID/EmployeeID reference tables above
-- ---------------------------------------------------------------------
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, Status) VALUES
(1,  1,  1, '2026-06-02', 'Completed'),
(2,  2,  3, '2026-06-05', 'Completed'),
(3,  1,  1, '2026-06-10', 'Pending'),
(4,  3,  2, '2026-06-11', 'Completed'),
(5,  4,  4, '2026-06-12', 'Completed'),
(6,  5,  1, '2026-06-15', 'Cancelled'),
(7,  6,  5, '2026-06-18', 'Completed'),
(8,  7,  3, '2026-06-20', 'Pending'),
(9,  8,  6, '2026-06-22', 'Completed'),
(10, 9,  2, '2026-06-25', 'Completed'),
(11, 10, 7, '2026-06-27', 'Completed'),
(12, 2,  1, '2026-06-29', 'Pending');

-- ---------------------------------------------------------------------
-- OrderDetails (15 records) -- OrderID/ProductID reference tables above
-- ---------------------------------------------------------------------
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice) VALUES
(1,  1,  1,  2,  24.99),
(2,  1,  2,  1,  12.50),
(3,  2,  3,  3,  18.75),
(4,  3,  5,  4,   4.50),
(5,  4,  7,  1, 189.99),
(6,  5,  8,  1, 349.00),
(7,  5,  9,  2,   5.99),
(8,  6,  4,  5,   6.25),
(9,  7,  11, 2,  29.99),
(10, 8,  6,  3,   3.75),
(11, 9,  12, 1,  34.50),
(12, 10, 2,  2,  12.50),
(13, 10, 10, 1,   8.99),
(14, 11, 1,  1,  24.99),
(15, 12, 3,  2,  18.75);