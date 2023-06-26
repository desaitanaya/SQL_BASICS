--A) Sort a result set by one column in ascending order

--The following statement sorts the customer list by the first name in ascending order:
select * from sales.customers
order by first_name

-----------------------------------------------------------------------------------------------------------

--B) Sort a result set by one column in descending order

--The following statement sorts the customer list by the first name in descending order.
select * from sales.customers
order by first_name desc

-----------------------------------------------------------------------------------------------------------

--C) Sort a result set by multiple columns

--The following statement retrieves the first name, last name, and city of the customers. It sorts the customer list by the city first and then by the first name.
select first_name, last_name, city
from sales.customers 
order by city, first_name

-----------------------------------------------------------------------------------------------------------

--D) Sort a result set by multiple columns and different orders

--The following statement sorts the customers by the city in descending order and then sorts the sorted result set by the first name in ascending order.
select first_name, last_name, city
from sales.customers 
order by city desc , first_name

-----------------------------------------------------------------------------------------------------------

--E) Sort a result set by a column that is not in the select list

--the following statement sorts the customer by the state even though the state column does not appear on the select list.
select first_name, last_name, city
from sales.customers 
order by state

-----------------------------------------------------------------------------------------------------------

--F) Sort a result set by an expression

--The following statement uses the LEN() function in the ORDER BY clause to retrieve a customer list sorted by the length of the first name:
select * from sales.customers
order by len(first_name) desc

-----------------------------------------------------------------------------------------------------------

--G) Sort by ordinal positions of columns

--The following statement sorts the customers by first name and last name. But instead of specifying the column names explicitly, it uses the ordinal positions of the columns:
select first_name, last_name
from sales.customers
order by 1, 2