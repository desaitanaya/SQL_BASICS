--1) Using TOP with a constant value

-- returns the top 10 most expensive products.
select top 10 product_name, list_price
from production.products
order by list_price desc

--------------------------------------------------------------------------------------------------

--2) Using TOP to return a percentage of rows

select top 1 percent product_name, list_price
from production.products
order by list_price desc

--------------------------------------------------------------------------------------------------

--3) Using TOP WITH TIES to include rows that match the values in the last row

--The following statement returns the top three most expensive products:
select top 3 with ties product_name, list_price
from production.products
order by list_price desc