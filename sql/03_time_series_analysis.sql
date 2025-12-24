SELECT
FORMAT_DATE('%Y-%m', order_date) AS month,
ROUND(SUM(revenue), 2) AS monthly_revenue
FROM `ecommerce_analysis.sales`
GROUP BY month
ORDER BY month;<----Monthly Revenue Trend
