--UNION and UNION ALL examples

--The following example combines names of staff and customers into a single list:
select first_name, last_name 
from sales.customers
union
select first_name, last_name
from sales.staffs

select first_name, last_name 
from sales.customers
union all
select first_name, last_name
from sales.staffs

--to sort the first names and last names of customers and staff
select first_name, last_name 
from sales.customers
union all
select first_name, last_name
from sales.staffs
order by first_name, last_name