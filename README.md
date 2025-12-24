# 📊 E-Commerce Sales Analysis using Google BigQuery

## 🔍 Project Overview
This project demonstrates an end-to-end data analysis workflow using **Google BigQuery** and **SQL**.  
The goal is to analyze e-commerce sales data to uncover revenue trends, customer behavior, and product performance.

This project was built as a **portfolio case study** to showcase real-world analytical skills.

---

## 🧩 Business Problem
An e-commerce company wants to answer the following questions:
- What are the overall revenue trends?
- Which product categories generate the most revenue?
- Which countries and customers drive sales?
- How does revenue change over time?
- What insights can improve business performance?

---

## 🗂 Dataset
- **Source:** Synthetic dataset created for portfolio use
- **Granularity:** One row per order
- **Records:** 500 orders

### Columns
| Column | Description |
|------|------------|
| order_id | Unique order identifier |
| order_date | Date of purchase |
| customer_id | Unique customer |
| country | Customer country |
| product_category | Product category |
| quantity | Units purchased |
| unit_price | Price per unit |
| revenue | quantity × unit_price |

Dataset is located in `/data/ecommerce_sales.csv`.

---

## 🛠 Tools Used
- **Google BigQuery**
- **SQL**
- **Looker Studio** (for visualization)
- **GitHub**

---

## 📈 Analysis Steps

### 1. Data Validation
- Checked for NULL values
- Verified revenue calculations

### 2. Exploratory Data Analysis (EDA)
- Total revenue
- Revenue by product category
- Revenue by country

### 3. Time Series Analysis
- Monthly revenue trends
- Seasonality patterns

### 4. Customer Analysis
- Top customers by lifetime value
- Average order value (AOV)

### 5. Advanced SQL
- Window functions
- Ranking product categories by country

All SQL queries are stored in the `/sql` folder.

---

## 📊 Key Insights
- Electronics is the highest revenue-generating category
- The US contributes the majority of total sales
- Revenue shows noticeable seasonal spikes
- A small percentage of customers drive a large share of revenue

---

## 📌 Sample SQL Query

```sql
SELECT
  product_category,
  ROUND(SUM(revenue), 2) AS total_revenue
FROM `ecommerce_analysis.sales`
GROUP BY product_category
ORDER BY total_revenue DESC;
