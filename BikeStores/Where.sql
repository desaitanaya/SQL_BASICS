--A) Finding rows by using a simple equality

--The following statement retrieves all products with the category id 1
select * from production.products
where category_id = 1

--B) Finding rows that meet two conditions

--The following example returns products that meet two conditions: category id is 1, and the model is 2018. It uses the logical operator AND to combine the two conditions.
select * from production.products
where category_id = 1
and model_year = 2018

--C) Finding rows by using a comparison operator

--The following statement finds the products whose list price is greater than 300, and the model is 2018.
select * from production.products
where list_price > 300
and model_year = 2018

--D) Finding rows that meet any of two conditions

--The following query finds products whose list price is greater than 3,000 or whose model is 2018. 
select * from production.products
where list_price > 3000
or model_year = 2018

--E) Finding rows with the value between two values

--The following statement finds the products whose list prices are between 1,899 and 1,999.99:
select * from production.products
where list_price between 1899 and 1999.99

--F) Finding rows that have a value in a list of values

--The following example uses the IN operator to find products whose list price is 299.99 or 369.99 or 489.99.
select * from production.products
where list_price in (299.99, 369.99, 489.99)

--G) Finding rows whose values contain a string

--The following example uses the LIKE operator to find products whose name contains the string Cruiser:
select * from production.products
where product_name like '%Cruiser%'













