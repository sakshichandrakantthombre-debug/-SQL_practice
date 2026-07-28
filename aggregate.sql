use classicmodels;
#1> display all customers whose  customerName starts with 'A';

select*from customers
where customerName like '%A';

#2> show all products where quantityInstock is less than 1000;
select* from products
where quantityInstock < 1000;

#3>display the customerName and country, sorted by country and then customerName;
select customerName, country
from customers
order by country, customerName;


#4> find the average buyPrice for each productLine;
select productLine,avg(buyPrice)
as average_buy_price
from products
group by productLine;

#5> display all orders placed between '2003-01-01' and '2003-12-31;

select * from orders
where orderDate  between
'2003-01-01' and '2003-12-31';

# 6> find the customers who have made more than  3 payments;

select customerNumber, count(*) as
 payment_count 
 from payments
 group by customerNumber
 having count(*) > 3;
 
 #7> display the employee's full name and the office city where they work;
 
 select concat(e.lastName, e.firstName)as employeeName, o.city
 from employees e
 join offices o 
 ON e.officeCode = o.officeCode;
 
 
 # 8> find the highest  payment amount made by each customer;
  select customerNumber, max(amount)
  as highest_payment
  from payments
  group by customerNumber;
  
  # 9> display the names of products that have never been  order;
  select p.productName
  from products p
  left join orderdetails od
  on p.productCode = od. productCode
  where od.productCode is null;
  
  #10> find the top 5 customers based on the totle payment amount;
  
  select customerNumber, sum(amount)
  as totle_payments
  from payments
  group by customerNumber
  order by totle_payments desc
  limit 5;
