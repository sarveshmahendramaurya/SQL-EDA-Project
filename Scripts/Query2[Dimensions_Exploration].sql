--====================--
--exploring Dimensions--
--====================--

--Exploring all countries our customers come from--
SELECT DISTINCT country from Gold.dim_customers;
/* countries:-
N/A
Germany
United States
Australia
United Kingdom
Canada
France*/

--Exploring Distinct categories of products--
SELECT DISTINCT categorry FROM Gold.dim_product;
/*Categories:-
NULL
Accessories
Bikes
Clothing
Components*/

--Exploring Distinct Subcategories of products--
SELECT DISTINCT categorry, subcategory FROM Gold.dim_product;
/* subcategories:-
NULL	NULL
Accessories	Bike Racks
Accessories	Bike Stands
Accessories	Bottles and Cages
Accessories	Cleaners
Accessories	Fenders
Accessories	Helmets
Accessories	Hydration Packs
Accessories	Tires and Tubes
Bikes	Mountain Bikes
Bikes	Road Bikes
Bikes	Touring Bikes
Clothing	Caps
Clothing	Gloves
Clothing	Jerseys
Clothing	Shorts
Clothing	Socks
Clothing	Vests
Components	Bottom Brackets
Components	Brakes
Components	Chains
Components	Cranksets
Components	Derailleurs
Components	Handlebars
Components	Mountain Frames
Components	Road Frames
Components	Saddles
Components	Touring Frames*/

--Exploring Distinct name of products--
SELECT DISTINCT categorry, subcategory, product_name FROM Gold.dim_product;
