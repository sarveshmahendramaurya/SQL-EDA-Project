--===============--
--exploring dates--
--===============--

/* Identify the earliest and latest dates (boundaries)
Understand the scope of data and the timespan.*/

--finding the date of first and last order
SELECT
MIN(order_date) AS first_order_date,
Max(order_date) AS last_order_date,
DATEDIFF(YEAR,MIN(order_date),MAX(order_date)) AS order_range_years,
DATEDIFF(MONTH,MIN(order_date),MAX(order_date)) AS order_range_months
FROM Gold.fact_sales

--findiing the oldest and oldest customers and their age
SELECT
MIN(birthdate) AS oldest_birthdate,
DATEDIFF(YEAR,MIN(birthdate),GETDATE()) oldest_customer_age,
MAX(birthdate) AS youngest_birthdate,
DATEDIFF(YEAR,MAX(birthdate),GETDATE()) youngest_customer_age
FROM Gold.dim_customers;
