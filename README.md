# 🛒 DATA DIGGER

### 📊 E-Commerce Database Management System using MySQL

> **Data Digger** is a MySQL-based E-Commerce Database Management project created to understand how real-world relational databases are designed, connected, and managed using SQL.

---

## 🌟 Project Overview

**Data Digger** is a simple and practical E-Commerce database project that manages important business information such as **customers, products, orders, and order details**.

The project focuses on learning and implementing core **SQL and relational database concepts** through practical queries.

It demonstrates how different tables can be connected using **Primary Keys and Foreign Keys** and how SQL can be used to perform data management and analysis.

---

## 🎯 Project Objectives

The main objectives of this project are:

* 🗄️ Create and manage a relational database
* 👥 Store customer information
* 📦 Manage product information
* 🛍️ Track customer orders
* 🧾 Manage order details
* 🔗 Understand relationships between tables
* ✏️ Perform CRUD operations
* 🔍 Filter and search data
* ↕️ Sort database records
* 📊 Perform basic data analysis
* 🧮 Use SQL aggregate functions

---

## 🏗️ Database Architecture

The **DataDigger** database contains four main tables:

```text
                    ┌─────────────────┐
                    │    Customers    │
                    ├─────────────────┤
                    │ CustomerID (PK) │
                    │ CustomerName    │
                    │ Email           │
                    │ City            │
                    └────────┬────────┘
                             │
                             │ CustomerID
                             ▼
                    ┌─────────────────┐
                    │     Orders      │
                    ├─────────────────┤
                    │ OrderID (PK)    │
                    │ CustomerID (FK) │
                    │ OrderDate       │
                    └────────┬────────┘
                             │
                             │ OrderID
                             ▼
                    ┌─────────────────────┐
                    │    OrderDetails     │
                    ├─────────────────────┤
                    │ OrderDetailID (PK)  │
                    │ OrderID (FK)        │
                    │ ProductID (FK)      │
                    │ Quantity            │
                    └──────────┬──────────┘
                               │
                               │ ProductID
                               ▼
                    ┌─────────────────┐
                    │    Products     │
                    ├─────────────────┤
                    │ ProductID (PK)  │
                    │ ProductName     │
                    │ Category        │
                    │ Price           │
                    └─────────────────┘
```

---

## 📋 Database Tables

### 👤 1. Customers

Stores information about customers.

| Column       | Description           |
| ------------ | --------------------- |
| CustomerID   | Unique ID of customer |
| CustomerName | Customer's name       |
| Email        | Customer email        |
| City         | Customer city         |

---

### 📦 2. Products

Stores information about products available in the store.

| Column      | Description       |
| ----------- | ----------------- |
| ProductID   | Unique product ID |
| ProductName | Name of product   |
| Category    | Product category  |
| Price       | Product price     |

---

### 🛍️ 3. Orders

Stores customer order information.

| Column     | Description                   |
| ---------- | ----------------------------- |
| OrderID    | Unique order ID               |
| CustomerID | Customer who placed the order |
| OrderDate  | Date of order                 |

---

### 🧾 4. OrderDetails

Stores products included in each order.

| Column        | Description                |
| ------------- | -------------------------- |
| OrderDetailID | Unique order detail ID     |
| OrderID       | Related order              |
| ProductID     | Related product            |
| Quantity      | Number of products ordered |

---

# ⚡ Features

### 🗄️ Database Management

* Create Database
* Create Tables
* Define Data Types
* Define Primary Keys
* Define Foreign Keys

### ✏️ CRUD Operations

The project demonstrates:

**C — Create**

```sql
INSERT INTO
```

**R — Read**

```sql
SELECT
```

**U — Update**

```sql
UPDATE
```

**D — Delete**

```sql
DELETE
```

---

### 🔎 Data Filtering

Filter records using:

```sql
WHERE
```

Example:

```sql
SELECT *
FROM Products
WHERE Price > 1000;
```

---

### ↕️ Data Sorting

Sort records using:

```sql
ORDER BY
```

Example:

```sql
SELECT *
FROM Products
ORDER BY Price DESC;
```

---

### 📊 Aggregate Functions

The project uses different SQL aggregate functions:

| Function  | Purpose             |
| --------- | ------------------- |
| `COUNT()` | Counts records      |
| `SUM()`   | Calculates total    |
| `AVG()`   | Calculates average  |
| `MAX()`   | Finds maximum value |
| `MIN()`   | Finds minimum value |

---

### 📌 Grouping

Data can be grouped using:

```sql
GROUP BY
```

Example:

```sql
SELECT Category, COUNT(*) AS TotalProducts
FROM Products
GROUP BY Category;
```

---

# 🧠 SQL Concepts Covered

```text
CREATE DATABASE
CREATE TABLE
PRIMARY KEY
FOREIGN KEY
INSERT
SELECT
UPDATE
DELETE
WHERE
ORDER BY
BETWEEN
GROUP BY
COUNT()
SUM()
AVG()
MAX()
MIN()
```

---

# 🛠️ Technologies Used

| Technology         | Usage                          |
| ------------------ | ------------------------------ |
| 🐬 MySQL           | Database Management            |
| 💻 SQL             | Query Language                 |
| 🧰 MySQL Workbench | Database Development & Testing |

---

# 📁 Project Structure

```text
DataDigger/
│
├── 📄 data_digger.sql
│
└── 📘 README.md
```

### 📄 data_digger.sql

Contains all SQL commands required to create and manage the **DataDigger** database.

### 📘 README.md

Contains complete documentation and information about the project.

---

# 🚀 How to Run the Project

### 1️⃣ Install MySQL

Install **MySQL Server** and **MySQL Workbench**.

### 2️⃣ Open MySQL Workbench

Connect to your MySQL server.

### 3️⃣ Open SQL File

Open:

```text
data_digger.sql
```

### 4️⃣ Execute the Script

Run the complete SQL script.

### 5️⃣ Select the Database

```sql
USE DataDigger;
```

### 6️⃣ Check Tables

```sql
SHOW TABLES;
```

You should see:

```text
Customers
Orders
Products
OrderDetails
```

---

# 🔥 Sample SQL Queries

### 👥 Display All Customers

```sql
SELECT * FROM Customers;
```

---

### 📦 Display All Products

```sql
SELECT * FROM Products;
```

---

### 💰 Find Expensive Products

```sql
SELECT *
FROM Products
WHERE Price > 1000;
```

---

### 🔎 Find Products Within a Price Range

```sql
SELECT *
FROM Products
WHERE Price BETWEEN 500 AND 2000;
```

---

### ↕️ Sort Products by Price

```sql
SELECT *
FROM Products
ORDER BY Price DESC;
```

---

### 🔢 Count Total Customers

```sql
SELECT COUNT(*) AS TotalCustomers
FROM Customers;
```

---

### 💵 Calculate Average Product Price

```sql
SELECT AVG(Price) AS AveragePrice
FROM Products;
```

---

### 🏆 Find Maximum Product Price

```sql
SELECT MAX(Price) AS HighestPrice
FROM Products;
```

---

### 📉 Find Minimum Product Price

```sql
SELECT MIN(Price) AS LowestPrice
FROM Products;
```

---

### 📊 Count Products by Category

```sql
SELECT Category, COUNT(*) AS TotalProducts
FROM Products
GROUP BY Category;
```

---

# 🔗 Relationship Between Tables

The tables are connected using **Primary Keys and Foreign Keys**.

```text
Customers
   │
   │ CustomerID
   ▼
Orders
   │
   │ OrderID
   ▼
OrderDetails
   │
   │ ProductID
   ▼
Products
```

### 🔑 Primary Keys

Primary keys uniquely identify each record.

Examples:

```text
CustomerID
ProductID
OrderID
OrderDetailID
```

### 🔗 Foreign Keys

Foreign keys connect one table with another.

Examples:

```text
Orders.CustomerID
OrderDetails.OrderID
OrderDetails.ProductID
```

---

# 📈 Learning Outcomes

Through this project, I learned how to:

* ✅ Create a relational database
* ✅ Create and modify tables
* ✅ Insert and manage records
* ✅ Perform CRUD operations
* ✅ Use Primary Keys
* ✅ Use Foreign Keys
* ✅ Create table relationships
* ✅ Filter records
* ✅ Sort records
* ✅ Group records
* ✅ Use aggregate functions
* ✅ Analyze E-Commerce data using SQL

---

# 💡 Future Enhancements

The project can be improved further by adding:

* 💳 Payment Management
* 📦 Inventory Management
* 🚚 Order Delivery Tracking
* 🎟️ Discount & Coupon System
* ⭐ Product Reviews & Ratings
* 📊 Sales Reports
* 👨‍💼 Admin Management
* 🔐 User Authentication
* ⚡ SQL Views
* 🔄 Stored Procedures
* 🚨 SQL Triggers
* 🔗 Advanced JOIN Queries

---

# 🎓 Project Type

```text
📌 Project      : Data Digger
📌 Domain       : E-Commerce
📌 Category     : Database Management
📌 Database     : MySQL
📌 Language     : SQL
📌 Level        : Beginner / Intermediate
📌 Tool         : MySQL Workbench
```

---

# 👨‍💻 Author

## Rakesh

**Data Digger — E-Commerce Database Management System**

Built with ❤️ using **MySQL & SQL**

---

# ⭐ If You Like This Project

If you found this project useful, feel free to:

⭐ Star the repository
🍴 Fork the project
💡 Improve the project
📚 Use it for learning SQL

---

## 📌 Conclusion

**Data Digger** provides a practical introduction to relational database management using MySQL.

By working with customers, products, orders, and order details, the project demonstrates how SQL can be used to **store, manage, retrieve, update, delete, and analyze data** in an E-Commerce environment.

> 🚀 **Learn SQL. Build Databases. Analyze Data.**
