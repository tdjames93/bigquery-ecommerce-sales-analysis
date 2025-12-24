SELECT
ROUND(SUM(revenue), 2) AS total_revenue
FROM `ecommerce_analysis.sales`;<--Total Revenue

SELECT
product_category,
ROUND(SUM(revenue), 2) AS total_revenue
FROM `ecommerce_analysis.sales`
GROUP BY product_category
ORDER BY total_revenue DESC;<--Revenue by Product Category

SELECT
country,
ROUND(SUM(revenue), 2) AS total_revenue
FROM `ecommerce_analysis.sales`
GROUP BY country
ORDER BY total_revenue DESC;<--Revenue by Country
