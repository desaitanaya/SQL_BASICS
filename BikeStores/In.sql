--A) Using SQL Server IN with a list of values example

--The following statement finds the products whose list price is one of the following values: 89.99, 109.99, and 159.99:
select * from production.products
where list_price in (89.99, 109.99, 159.99)

--To find the products whose list prices are not one of the prices above, you use the NOT IN operator as shown in the following query:
select * from production.products
where list_price not in (89.99, 109.99, 159.99)

--B) Using SQL Server IN operator with a subquery example

--The following query returns a list of product identification numbers of the products located in the store id one and has the quantity greater than or equal to 30:
select * from production.products
where product_id in ( select product_id
					  from production.stocks
					  where store_id = 1
					  and quantity >= 30)