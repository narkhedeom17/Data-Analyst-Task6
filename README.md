# 📊 Task 6 – Sales Trend Analysis Using SQL Aggregations

## 📌 Overview
This project focuses on analyzing monthly and yearly sales trends using SQL aggregation functions.  
The dataset used is stored in a table named **online_sales**, which contains order information such as:

- `Order_ID`
- `Order_Date`
- `CustomerName`
- `State`
- `City`

Since the dataset does not contain revenue-related fields (like Amount), the analysis is performed on **order volume only**.

---

## 🗂️ Dataset Structure
| Column Name     | Description                     |
|-----------------|---------------------------------|
| Order_ID        | Unique ID for each order        |
| Order_Date      | Date on which order was placed  |
| CustomerName    | Name of the customer            |
| State           | Customer's state                |
| City            | Customer's city                 |

---

## 🛠️ SQL Operations Performed

### ✅ **1. Monthly Order Volume**
Counts the number of unique orders per month.
```sql
SELECT YEAR(Order_Date) AS Year,
       MONTH(Order_Date) AS Month,
       COUNT(DISTINCT Order_ID) AS Total_Orders
FROM online_sales
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;
