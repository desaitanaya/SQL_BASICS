--Simple stored procedure
create procedure productList
as
begin
	select product_name, list_price
	from production.products
	order by product_name
end

--Executing stored procedure
exec productList

--Modifying stored procedure
alter procedure productList
as
begin
	select product_name, list_price
	from production.products
	order by list_price
end

--Stored procedure with parameters
--Find the products whose list prices are greater than an input price:
create procedure findProducts
@min_list_price decimal
as
begin
	select product_name, list_price
	from production.products
	where list_price >= @min_list_price
	order by list_price
end

--Executing stored procedure
exec findProducts 100


--Stored procedure with multiple parameters
--Find the products whose list prices are greater than an input price:
alter procedure findProducts
@min_list_price decimal,
@max_list_price decimal
as
begin
	select product_name, list_price
	from production.products
	where list_price >= @min_list_price
	and list_price <= @max_list_price
	order by list_price
end

--Executing stored procedure
exec findProducts 100, 1000


--Stored procedure with multiple parameters
--Find the products whose list prices are greater than an input price:
alter procedure findProducts
@min_list_price decimal,
@max_list_price decimal,
@name varchar
as
begin
	select product_name, list_price
	from production.products
	where list_price >= @min_list_price
	and list_price <= @max_list_price
	and product_name like '%' + @name + '%'
	order by list_price
end

--Executing stored procedure
exec findProducts 100, 800, 'Trek'


--Declaring a variable in stored procedure
--to get a list of products whose model year is 2018:
create procedure listProducts
as
begin
	declare @model_year smallint
	set @model_year = 2018

	select product_name, model_year, list_price
	from production.products
	where model_year = @model_year
	order by product_name
end

--Executing stored procedure
exec listProducts 


--If-else block in stored procedure
--gets the sales amount from the sales.order_items table in the sample database and then prints out a message if the sales amount is greater than 1 million.
alter procedure salesAmount
as
begin
	declare @sales int

	select @sales = sum(list_price * quantity)
	from sales.order_items as i
	inner join sales.orders as o
	on i.order_id = o.order_id
	where year(order_date) = 2014

	select @sales

	if @sales > 1000000
	begin
		print 'Great! The sales amount in 2018 is greater than 1,000,000'
	end
	else
	begin
		print 'Sales amount in 2017 did not reach 10,000,000'
	end
end

--Executing a stored procedure
exec salesAmount

