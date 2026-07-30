#1> find all products that have less than 1000 units in stock.

select  productName, 
quantityInStock
from products
where quantityInStock < 1000;


#2> highest and lowest buy price for each product line.

select productLine,
max(buyPrice) as highest_price,
min(buyPrice) as lowest_price
from products
group by productLine;

#3>Customer who have never placed an order;
select c.customerName
from customers c
left join orders o
on c.customerName=o.customerNumber
where o.orderNumber is null;

#4> highest and lowest buy price for each product line;

select productLine,
max(buyPrice) as highest_price,
min(buyPrice) as lowest_price
from products
group by productLine;

# 5> highest and lowest customerNumber for each customeName;


select customerName,
max(customerNumber) as highest_price,
min(CustomerNumber) as lowest_price
from customers
group by customerName;

#6> display the totle sales amount for each order.

select orderNumber,
 sum(quantityOrdered *
 priceEach) as total_sales
 from orderdetails
 group by orderNumber;
 
 
 #7> employees who do not report to any managers;
 
 select employeeNumber,
 firstName,
 lastName
 from employees
 where reportsTo is null;
 
 #8> number of order placed by each cusstomers;
 
 select customerNumber,
 count(orderNumber) as totle_orders
 from orders
 group by customerNumber;
 
 # 9> products with less than  6000 units in stock:
 

select  productName, 
quantityInStock
from products
where quantityInStock < 6000;

#10>select orderNumber one can contain multiple products, we use sum() to add the value of all items in the orders;
select sum(quantityOrdered * 
priceEach) as totle_sales
from orderdetails
group by orderNumber;