--A) Using SQL Server BETWEEN with numbers example

--The following query finds the products whose list prices are between 149.99 and 199.99:
select * from production.products
where list_price between 149.99 and 199.99

--To get the products whose list prices are not in the range of 149.99 and 199.99: 
select * from production.products
where list_price not between 149.99 and 199.99 


--B) Using SQL Server BETWEEN with dates example

--The following query finds the orders that customers placed between January 15, 2017 and January 17, 2017:
select * from sales.orders
where order_date between '20170115' and '20170117'