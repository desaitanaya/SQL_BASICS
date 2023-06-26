--A) Using AND operator example

--The following example finds the products where the category identification number is one and the list price is greater than 400:
select * from production.products 
where category_id = 1
and list_price > 400

--B) Using multiple AND operators example

--The following statement finds the products that meet all the following conditions: category id is 1, the list price is greater than 400, and the brand id is 1:
select * from production.products
where category_id = 1
and list_price > 400
and brand_id = 1

--C) Using the AND operator with other logical operators
select * from production.products
where brand_id = 1
or brand_id = 2
and list_price > 1000