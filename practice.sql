select customerName,customerName,country
from customers
where country='USA'
order by country desc
limit 5;



select o.orderNumber,
c.customerName
from orders o
inner join customers c
on o.customerNumber = 
c.customerNumber;

select productLine, count(*) as total_products
from products
group by productLine;


select productName,buyPrice
from products
order by buyprice desc
limit 5;


select c.customerName, p.amount
from customers c
inner join payments p
on c.customerNumber=
p.customerNumber;



select *from orderdetails
where quantityOrdered>50
order by quantityOrdered desc
limit 6;

select * from customers;


select customerNumber,
count(orderNumber) as total_orders
from orders
group by customerNumber
having count(orderNumber)>5;


select customerNumber,
sum(orderNumber) as sum_orders
from orders
group by customerNumber
having count(orderNumber)>5;


select customerNumber,
avg(orderNumber) as avg_orders
from orders
group by customerNumber
having avg(orderNumber)>5;



select customerNumber,
max(orderNumber) as max_orders
from orders
group by customerNumber
having max(orderNumber)>5;

