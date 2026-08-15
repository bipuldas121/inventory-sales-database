# 📦 Inventory & Sales Management Database System (MySQL)

## 📌 Project Overview
An end-to-end relational database solution designed and implemented in **MySQL Workbench** to manage product stock, supplier networks, sales orders, customer details, and employee activities. This project demonstrates full-cycle database modeling, constraint enforcement, performance tuning, and business intelligence analytics.

---

## 🏗️ Relational Schema & Design
The database architecture models **7 interconnected tables**:
* **Categories**: Product categorization reference lookup
* **Suppliers**: Vendor details and regional contact records
* **Products**: Inventory stock levels, pricing, and reorder thresholds
* **Customers**: Client directory and shipping addresses
* **Employees**: Store staff profiles and job roles
* **Orders**: Order transaction headers and status tracking (`Completed`, `Pending`, `Cancelled`)
* **OrderDetails**: Transaction line items, unit prices, and quantities

---

## 🛠️ Key Technical Features
* **Data Integrity**: Explicit Primary Key & Foreign Key constraints across all table relationships.
* **Query Optimization**: Custom single-column and composite indexes (`OrderDate`, `Status`, `ProductName`, `EmployeeID + OrderDate`) to speed up search operations.
* **Business Intelligence Queries**: Complex SQL scripts utilizing multi-table `JOIN`s, aggregations (`SUM`, `COUNT`, `AVG`), `GROUP BY`, `HAVING` filters, and nested subqueries.

---

## 📂 Repository Contents
| File Name | Description |
| :--- | :--- |
| `InventorySales_Planning.xlsx` | Database schema design, data dictionary, and ERD mapping |
| `InventorySales_CreateTables.sql` | DDL script defining tables, datatypes, and relational constraints |
| `InventorySales_Data.sql` | DML script populating all 7 tables with production-like records |
| `InventorySales_Indexes.sql` | Performance tuning script with targeted indexes |
| `InventorySales_Queries.sql` | 6 business analytics queries and project reflection notes |

---

## 📊 Sample Insights Delivered
* **Reorder Trigger Analysis**: Dynamically identifies products approaching critical stock levels.
* **Employee Sales Leaderboard**: Tracks total sales revenue processed per employee on completed transactions.
* **High-Value Customer Segmentation**: Filters top-spending customers using aggregate `HAVING` logic.

---

## ✒️ Author
* **Tools Used**: MySQL, MySQL Workbench, SQL, MS Excel
