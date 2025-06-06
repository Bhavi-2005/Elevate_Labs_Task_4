# Elevate_Labs_Task_4
# 📊 Task 4: SQL for Data Analysis

This repository contains the work for Task 4 of the Data Analyst Internship, focused on SQL data analysis using the **Olist Brazil E-commerce dataset**.

---

## 🧾 Files Included

| File Name                  | Description                                      |
|---------------------------|--------------------------------------------------|
| `olist.sqlite`            | The open-source SQLite database from Olist      |
| `Task_4_SQL_queries.sql`  | SQL queries covering all core operations         |
| `Task_4_screenshorts.PNG` | Screenshot(s) of query outputs from DB Browser   |

---

## ✅ Task Objectives Covered

### a. Use `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`
- Count total orders per customer
- Filter orders by city
- Sort results by counts or timestamps

### b. Use JOINS (`INNER`, `LEFT`, simulated `RIGHT`)
- Join products with order items
- Match orders with reviews
- Identify sellers with no sales (RIGHT JOIN equivalent)

### c. Write Subqueries
- Customers who spent more than average

### d. Use Aggregate Functions (`SUM`, `AVG`)
- Total revenue per payment type
- Average order payment

### e. Create Views
- `high_value_customers`: users who spent > 1000
- `order_review_summary`: combine reviews and orders

### f. Optimize Queries with Indexes
- Index on `customer_id` (orders)
- Index on `seller_id` (order_items)

---

## 🖼️ Screenshots

The `Task_4_screenshorts.PNG` file includes outputs of major SQL queries run using DB Browser for SQLite.

---

## 💡 How to Run

1. Open `olist.sqlite` in [DB Browser for SQLite](https://sqlitebrowser.org/).
2. Load and run the queries from `Task_4_SQL_queries.sql` using the "Execute SQL" tab.
3. View results or create your own modifications for learning.

---

## 📌 About the Dataset

- Source: [Olist E-commerce Public Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
- Format: SQLite (`.sqlite`)

---
