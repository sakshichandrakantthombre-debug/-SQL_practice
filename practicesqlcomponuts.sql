# joins 
select c.customerNumber,
c.customerNumber,
o.orderNumber,
o.orderDate
from customers c
inner join orders o
on c.customerNumber =
o.customerNumber;



select c.customerName,
o.orderNumber
from customers c
inner join orders o 
on c.customerNumber =
o.customerNumber
where c.country='USA';


select * from employees
where reportsTo < 100;

# use for the or clause  one or three conditions basics;
select * from customers
where country='USA'
or country='France';

# In use for the multiple conditions;
select * 
from customers
where country IN('USA', 'France');


select c.customerName,
o.orderNumber
from customers c
left join orders o 
on c.customerNumber =
o.customerNumber;


select count(*)as total_count
 from customers;
 
 select c.customerName, c.country
 from customers c;
 
 select distinct country 
 from customers;
 
 # group by use for grouping value data give:
 select country, count(*)
 from customers
 group by country;
 
 # as is alices optional;
 select c.customerName
 from customers  c;
 
 
