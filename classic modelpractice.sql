use classicmodels;
select customerName, city, country
from customers
where country = 'USA';

# display all records from the customers table;
select * from  customers;

# display onle customerName, city, and country from the customers table;
select  customerName, city, country
from customers;

# find all customers from USA;
select * from customers
where country='USA';

#display all products with a buyprice greater  than 50;

select * from products
where buyprice>50;

# find the customers whose customerName starts with "A"

select * from customers
where customerName like '%A';

# display all products sorted by buyPrice in descending order.

select productName,buyPrice 
from products
order by buyPrice desc;

select * from customers
where orderDate > '2004-01-01';

# display all products sorted by buyprice in descending order.
select productName, buyPrice
from products
order by buyPrice Desc;

# display top 10 most expensive products;
select  productName, buyPrice 
from products
order by buyPrice desc
limit 10; 

# display all employees who work in officeCode =1;
select  firstName, lastName, officeCode
 from employees
 where officeCode = 1;
 
 
 # display all customers from france or germany.
 select customerName, country 
 from customers
 where country in ('France' , 'Germany');



