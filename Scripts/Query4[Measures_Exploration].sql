--==================--
--Exploring Measures--
--==================--

--Finding the total sales
SELECT SUM(sales_amount) AS total_sales from Gold.fact_sales;
/*Total number of sales:-
	29356250 */

--Finding how many items are sold
SELECT COUNT(quantity) AS total_quantity FROM Gold.fact_sales;
/*Total numbers of item sold:-
	60398 */

--Finding the average selling price
SELECT AVG(price) AS average_selling_price FROM Gold.fact_sales;
/*Average selling price:-
	486 */

--Finding the total number of orders
SELECT COUNT(DISTINCT order_number) AS total_orders FROM gold.fact_sales;
/* Total orders:-
	27659 */

--Finding the total number of products
SELECT COUNT(product_number) AS total_products FROM Gold.dim_product;
/*Total numbers of products:-
	197 */

--Finding the total number of customers
SELECT COUNT(customer_number) AS total_cutomers FROM Gold.dim_customers;
/* total number of customers:-
	18485 */

---Finding the total number of cutomers that has place an order
SELECT 
COUNT(DISTINCT customer_key) as total_customers_who_ordered from Gold.fact_sales;
/* Total numbers of custromer to who placed an order:-
	18484 */

--Gerating Report that show all key metrices

SELECT 'total_sales' as Measure_name ,SUM(sales_amount) AS Measure_name from Gold.fact_sales
UNION ALL
SELECT 'total_quantity' as Measure_name , COUNT(quantity) FROM Gold.fact_sales
UNION ALL
SELECT 'average_selling_price' as Measure_name ,AVG(price)  FROM Gold.fact_sales
UNION ALL
SELECT 'total_orders' as Measure_name , COUNT(DISTINCT order_number)  FROM gold.fact_sales
UNION ALL
SELECT 'total_products' as Measure_name ,COUNT(product_number) FROM Gold.dim_product
UNION ALL
SELECT 'total_cutomers' as Measure_name ,COUNT(customer_number)  FROM Gold.dim_customers
UNION ALL
SELECT 'total_customers_who_ordered' as Measure_name , COUNT(DISTINCT customer_key) from Gold.fact_sales;

/*
Measure_name                Measure_name
total_sales	                29356250
total_quantity	            60398
average_selling_price    	486
total_orders	            27659
total_products	            197
total_cutomers	            18485
total_customers_who_ordered	18484 
								*/