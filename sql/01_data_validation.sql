SELECT
COUNTIF(order_id IS NULL) AS null_orders,
COUNTIF(customer_id IS NULL) AS null_customers,
COUNTIF(revenue IS NULL) AS null_revenue
FROM `ecommerce_analysis.sales`;<----Check for NULLs

SELECT
order_id,
revenue,
quantity * unit_price AS calculated_revenue
FROM `ecommerce_analysis.sales`
WHERE revenue != quantity * unit_price;<----Validate Revenue Calculation
