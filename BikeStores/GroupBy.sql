--SQL Server GROUP BY clause and aggregate functions

--the following query returns the number of orders placed by the customer by year:
select customer_id, year(order_date), count(order_id) as order_placed
from sales.orders
where customer_id in (1,2)
group by customer_id, year(order_date)
order by customer_id


--Using GROUP BY clause with the COUNT() function example

--The following query returns the number of customers in every city:
select city, count(customer_id) as number_of_customers
from sales.customers
group by city

--the following query returns the number of customers by state and city:
select city, state, count(customer_id) as number_of_customers
from sales.customers
group by state, city


--Using GROUP BY clause with the MIN and MAX functions example

--The following statement returns the minimum and maximum list prices of all products with the model 2018 by brand:
select brand_name, min(list_price) as minimum_price, max(list_price) as maximum_price 
from production.products as p inner join production.brands as b
on p.brand_id = b.brand_id
where model_year = 2018
group by brand_name


--Using GROUP BY clause with the AVG() function example

--The following statement uses the AVG() function to return the average list price by brand for all products with the model year 2018:
select brand_name, avg(list_price) as average_price 
from production.products as p inner join production.brands as b
on p.brand_id = b.brand_id
where model_year = 2018
group by brand_name


--Using GROUP BY clause with SUM function example

--The following query uses the SUM() function to get the net value of every order:
select order_id, sum(quantity * list_price * (1-discount)) as net_value
from sales.order_items
group by order_id



