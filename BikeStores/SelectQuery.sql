--A) SQL Server SELECT – retrieve some columns of a table example

--Displays the first name and last name of all customers:
select first_name, last_name
from sales.customers

--Displays the first name, last name, and email of all customers:
select first_name, last_name, email
from sales.customers

-----------------------------------------------------------------------------------------------------------

--B) SQL Server SELECT – retrieve all columns from a table example

--To get data from all table columns, you can specify all the columns in the select list.
select * from sales.customers

-----------------------------------------------------------------------------------------------------------

--C) SQL Server SELECT – sort the result set

--Displays the customers located in California
select * from sales.customers
where state = 'CA'
order by first_name

-----------------------------------------------------------------------------------------------------------

--D) SQL Server SELECT – group rows into groups example

--Displays all the cities of customers located in California and the number of customers in each city.
select city, count(customer_id) from sales.customers
where state = 'CA'
group by city

-----------------------------------------------------------------------------------------------------------

--E) SQL Server SELECT – filter groups example

--Displays the city in California which has more than ten customers:
select city, count(customer_id) 
from sales.customers
where state = 'CA'
group by city
having count(customer_id) > 10