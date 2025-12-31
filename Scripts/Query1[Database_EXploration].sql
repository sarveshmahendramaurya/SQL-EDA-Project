--Explore all objects in the Database
SELECT * FROM INFORMATION_SCHEMA.TABLES;

--Explore all columns in the Database
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='dim_customers';
/* column_names:-
customer_key
customer_id
customer_number
first_name
last_name
country
marital_status
gender
birthdate
create_date*/

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='dim_product';
/*column_names:-
product_key
product_id
product_number
product_name
catagory_id
categorry
subcategory
maintenance
cost
product_line
prd_start_dt*/

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='fact_sales';
/*column_names:-
order_number
product_key
customer_key
order_date
shipping_date
due_date
sales_amount
quantity
price*/