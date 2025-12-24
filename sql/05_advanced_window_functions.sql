SELECT
country,
product_category,
ROUND(SUM(revenue), 2) AS total_revenue,
RANK() OVER (
PARTITION BY country
ORDER BY SUM(revenue) DESC
) AS revenue_rank
FROM `ecommerce_analysis.sales`
GROUP BY country, product_category;<---Rank Categories by Revenue Within Each Country
