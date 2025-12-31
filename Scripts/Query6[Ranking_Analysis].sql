--which 5 products generate the highest revenue?
SELECT TOP 5
dp.product_name,
SUM(fs.sales_amount) total_revenue
FROM Gold.fact_sales fs
LEFT JOIN Gold.dim_product dp
ON fs.product_key=dp.product_key
GROUP BY dp.product_name
ORDER BY total_revenue DESC;

--which 5 products generate the lowest revenue?
SELECT TOP 5
dp.product_name,
SUM(fs.sales_amount) total_revenue
FROM Gold.fact_sales fs
LEFT JOIN Gold.dim_product dp
ON fs.product_key=dp.product_key
GROUP BY dp.product_name
ORDER BY total_revenue 

--Finding top 10 customers who have generated the highest revenues

SELECT TOP 10
dc.customer_key,
dc.first_name,
dc.last_name,
SUM(f.sales_amount) AS total_revenue
FROM Gold.fact_sales f
LEFT JOIN Gold.dim_customers dc
ON f.customer_key=dc.customer_key
GROUP BY dc.customer_key,
dc.first_name,
dc.last_name
ORDER BY total_revenue DESC;

