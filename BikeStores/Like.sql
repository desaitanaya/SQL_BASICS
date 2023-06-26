--The % (percent) wildcard examples

--The following example finds the customers whose last name starts with the letter z:
select * from sales.customers
where last_name like 'z%'

--The following example returns the customers whose last name ends with the string er:
select * from sales.customers
where last_name like '%er'

--The following statement retrieves the customers whose last name starts with the letter t and ends with the letter s:
select * from sales.customers
where last_name like 't%s'


--The _ (underscore) wildcard example

--the following statement returns the customers where the second character is the letter u:
select * from sales.customers
where last_name like '_u%'


--The [list of characters] wildcard example

--the following query returns the customers where the first character in the last name is Y or Z:
select * from sales.customers
where last_name like '[YZ]%'


--The [character-character] wildcard example

--the following query finds the customers where the first character in the last name is the letter in the range A through C:
select * from sales.customers
where last_name like '[A-C]%'


--The [^Character List or Range] wildcard example

--the following query returns the customers where the first character in the last name is not the letter in the range A through X:
select * from sales.customers
where last_name like '[^A-X]%'


--The NOT LIKE operator example

--The following example uses the NOT LIKE operator to find customers where the first character in the first name is not the letter A:
select * from sales.customers
where first_name not like 'A%'