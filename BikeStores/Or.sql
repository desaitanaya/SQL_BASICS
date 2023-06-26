--A) Using OR operator example

--The following example finds the products whose list price is less than 200 or greater than 6,000:
select * from production.products
where list_price < 200
or list_price > 6000

--B) Using multiple OR operators example

--The following statement finds the products whose brand id is 1, 2, or 4:
select * from production.products
where brand_id = 1
or brand_id = 2
or brand_id = 4

--C) Using OR operator with AND operator example

--To find the products whose brand id is 1 or 2 and list price is greater than 500
select * from production.products
where brand_id = 1
or brand_id = 2
and list_price > 500