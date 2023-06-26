--User Defined Function

-- creates a function that calculates the net sales based on the quantity, list price, and discount:
create function sales.NetSale(
	@quantity int,
	@list_price dec(10,2),
	@discount dec(4,2)
)
returns dec(10,2)
as
begin
	return @quantity * @list_price * (1-@discount)
end

select sales.NetSale(10,100,0.1) as NetSale 


--Aggregate function

--AVG() function to return the average list price of all products in the products table:
select avg(list_price) as AverageProductPrice 
from production.products


--The ROUND function returns the rounded average list price and the CAST function converts the result to a decimal number with two decimal places.
select cast(round(avg(list_price),2) as dec(10,2)) as AverageProductPrice 
from production.products

--The COUNT() function to return the number of products whose price is greater than 500:
select count(*) as ProductCount
from production.products
where list_price > 500

--The MAX() function to return the highest list price of all products:
select max(list_price) as MaximumPrice
from production.products

--The MIN() function to return the lowest list price of all products:
select min(list_price) as MinimumPrice
from production.products

--The SUM() function to calculate the total stock by product id in all warehouses:
select product_id, sum(quantity) as StockCount
from production.stocks
group by product_id
order by StockCount desc