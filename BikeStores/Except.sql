--A) Simple EXCEPT example

--The following example uses the EXCEPT operator to find the products that have no sales:
select product_id from production.products
except
select product_id from sales.order_items


--B) EXCEPT with ORDER BY example

--the following example finds the products that had no sales and sorts the products by their id in ascending order:
select product_id from production.products
except
select product_id from sales.order_items
order by product_id