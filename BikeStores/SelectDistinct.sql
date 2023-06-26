--A) DISTINCT one column example

--The following statement returns all distinct cities of all customers in the customers tables:
select Distinct city 
from sales.customers

--B) DISTINCT multiple columns example

--This statement returns all cities and states of all customers:
select Distinct city , state
from sales.customers

--C) DISTINCT with null values example

--The following example finds the distinct phone numbers of the customers:
select Distinct phone 
from sales.customers


