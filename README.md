
# 🛒 E-Commerce Database Management System

## 📌 Project Overview

This project demonstrates the design and implementation of an E-Commerce Database Management System using MySQL.

It manages customer information, product details, orders, order items, and payment transactions. The project focuses on database creation, SQL queries, data filtering, aggregate functions, sorting, and table relationships.

## 🛠️ Technologies Used

- MySQL
- SQL
- MySQL Workbench

## 🗄️ Database Structure

**Database Name:** `website`

The project consists of five main tables:

| Table Name | Description |
|---|---|
| ankith | Stores customer information |
| product | Stores product details and inventory |
| orders | Stores customer order information |
| order_items | Stores products associated with orders |
| payment | Stores payment transaction details |

## 📊 Features Implemented

### 1. Customer Management
- Created customer table with customer ID, name, city, email and phone number.
- Inserted 15 customer records.
- Retrieved distinct customer names.
- Filtered customers based on city.
- Used `IN`, `BETWEEN`, `LIKE`, `AND` and `OR`.
- Counted total customers and city-wise customers.

### 2. Product Management
- Created product table.
- Inserted 15 product records.
- Retrieved products based on category.
- Filtered products based on stock availability.
- Sorted products using `ORDER BY`.
- Used aggregate functions:
  - `COUNT()`
  - `SUM()`
  - `MAX()`
  - `MIN()`
- Retrieved top products using `LIMIT`.

### 3. Order Management
- Created orders table.
- Established a foreign key relationship with customers.
- Added order dates using `ALTER TABLE`.
- Inserted sample order records.
- Managed order statuses such as Delivered, Shipped, Processing and Cancelled.

### 4. Order Items Management
- Created order_items table.
- Connected orders and products using foreign keys.
- Stored product quantities for individual orders.

### 5. Payment Management
- Created payment table.
- Linked payments with orders using foreign keys.
- Stored payment methods, amounts and statuses.
- Included UPI, Credit Card, Debit Card and Net Banking.

## 🔗 SQL Concepts Practiced

- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- SELECT
- DISTINCT
- WHERE
- IN and BETWEEN
- LIKE
- AND and OR
- ORDER BY
- LIMIT
- COUNT, SUM, MAX and MIN
- ALTER TABLE
- PRIMARY KEY
- FOREIGN KEY
- INNER JOIN

## 🔍 Sample SQL Queries

**1. Retrieve customers from Bengaluru**

```sql
SELECT *
FROM ankith
WHERE city = 'Bengaluru';
```

**2. Find the top 3 expensive products**

```sql
SELECT *
FROM product
ORDER BY price DESC
LIMIT 3;
```

**3. Count customers from Bengaluru**

```sql
SELECT COUNT(*)
FROM ankith
WHERE city = 'Bengaluru';
```

**4. Retrieve customer order details using JOIN**

```sql
SELECT
    c.customer_id,
    o.order_id,
    o.order_date,
    o.order_status
FROM ankith c
JOIN orders o
ON c.customer_id = o.customer_id;
```

## 🎯 Learning Outcomes

- Understood relational database design.
- Practiced creating and managing multiple tables.
- Learned primary key and foreign key relationships.
- Improved SQL querying and data filtering skills.
- Practiced aggregate functions and sorting.
- Implemented INNER JOIN to retrieve related information.

## 👨‍💻 Author

**Ankith J**

Computer Science Engineering Student

GitHub: [ankith-tech](https://github.com/ankith-tech)

---

⭐ This project is part of my hands-on SQL and Database Management learning journey.
