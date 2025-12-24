SELECT
customer_id,
ROUND(SUM(revenue), 2) AS lifetime_value
FROM `ecommerce_analysis.sales`
GROUP BY customer_id
ORDER BY lifetime_value DESC
LIMIT 10;<---Top Customers by Lifetime Value

SELECT
ROUND(AVG(revenue), 2) AS avg_order_value
FROM `ecommerce_analysis.sales`;<---Average Order Value
