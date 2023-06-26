--IS NULL
--The following statement finds the customers who do not have phone numbers recorded in the  customers table:
select * from sales.customers
where phone is null

--IS NOT NULL
--The following query returns customers who have phone information:
select * from sales.customers
where phone is not null