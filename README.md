# Warehouse Operations Analysis System

## Project Overview

This project focuses on designing and analyzing a warehouse operations system using SQL.
It includes data related to products, inventory, customers, orders, shipments, and operational issues.

The goal of the project is to simulate a real-world warehouse environment and analyze business operations such as order processing, delivery performance, and issue tracking.

---

## Problem Statement

Small warehouse operations often lack a structured system to track inventory, orders, shipments, and operational issues.
This can lead to inefficiencies such as delayed deliveries, poor inventory management, and lack of visibility into operations.

This project aims to solve this problem by creating a structured database system that organizes and connects all warehouse data for better analysis.


---

## Dataset Description

The dataset used in this project was initially created in Excel and then imported into MySQL.
It represents a simplified warehouse system including product details, customer orders, inventory levels, shipment tracking, and issue management.

---

## Tables in the Database

### 1. Products

Stores product information such as product name, category, brand, and price.

### 2. Customers

Stores customer details who place orders.

### 3. Inventory

Tracks stock levels and storage locations of products in the warehouse.

### 4. Orders

Contains customer order details along with the order date.

### 5. Order Details

Stores product-wise quantity for each order, linking orders and products.

### 6. Shipments

Tracks shipping details such as shipment date, delivery date, and delivery status.

### 7. Issues

Records operational issues such as equipment failures, incorrect shipments, and other warehouse problems.


---

## SQL Analysis

The following SQL queries were used to analyze warehouse operations and extract meaningful insights.

### 1. Total Number of Orders

```sql
SELECT COUNT(*) AS total_orders FROM orders;
```

### 2. Delayed Shipments

```sql
SELECT * FROM shipments
WHERE status = 'Delayed';
```

### 3. Open Issues

```sql
SELECT * FROM issues
WHERE status = 'Open';
```

### 4. Total Quantity per Order

```sql
SELECT order_id, SUM(quantity) AS total_items
FROM order_details
GROUP BY order_id;
```

### 5. Customer Orders with Product Details

```sql
SELECT customers.customer_name, products.product_name, order_details.quantity
FROM order_details
JOIN orders ON order_details.order_id = orders.order_id
JOIN customers ON orders.customer_id = customers.customer_id
JOIN products ON order_details.product_id = products.product_id;
```

---

## Key Insights

* Some shipments are marked as delayed, indicating inefficiencies in delivery operations.
* Open issues highlight operational challenges within the warehouse.
* Certain orders contain higher quantities, showing demand patterns for specific products.
* The system helps in tracking order flow, shipment performance, and issue resolution.

---

## Tools Used

* MySQL (Database creation and SQL queries)
* Excel (Dataset preparation)

---

## Future Enhancements

* Develop Power BI dashboards to visualize key metrics such as shipment status, order trends, and issue tracking.
* Extend the system using Power Apps to allow warehouse staff to log issues and update inventory.
* Use Power Automate to send alerts for delayed shipments and new issues.

---
