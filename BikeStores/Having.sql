--SQL Server HAVING with the COUNT function example

--The following statement uses the HAVING clause to find the customers who placed at least two orders per year:
select customer_id, count(order_id), year(order_date)
from sales.orders
group by customer_id, year(order_date)
having count(order_id) >= 2


--SQL Server HAVING clause with the SUM() function example

--The following statement finds the sales orders whose net values are greater than 20,000:
select order_id, sum(quantity * list_price * (1-discount)) as net_value
from sales.order_items
group by order_id
having sum(quantity * list_price * (1-discount)) > 20000


--SQL Server HAVING clause with MAX and MIN functions example

--The following statement first finds the maximum and minimum list prices in each product category. 
--Then, it filters out the category which has the maximum list price greater than 4,000 or the minimum list price less than 500:
select category_id, min(list_price) as minimum_price , max(list_price) as maximum_price
from production.products
group by category_id
having max(list_price) > 4000 
or min(list_price) < 500


--SQL Server HAVING clause with AVG() function example

--The following statement finds product categories whose average list prices are between 500 and 1,000:
select category_id, avg(list_price) as average_price
from production.products
group by category_id
having avg(list_price) between 500 and 1000
