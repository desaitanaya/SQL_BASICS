--The following query returns all products from the products table and sorts the products by their list prices and names:
--skips first 10 products
select * from production.products
order by list_price, product_name
offset 10 rows


--To skip the first 10 products and select the next 10 products :
select * from production.products
order by list_price, product_name
offset 10 rows
fetch next 10 rows only


--To get the top 10 most expensive products :
select product_name, list_price
from production.products
order by list_price desc
offset 0 rows
fetch next 10 rows only