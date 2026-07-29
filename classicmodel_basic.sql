#1> display all customer from  the usa 

select * from customers
where country='USA';

#2> show the customerName and creditlimit of customers whose creditliimit is greater than 50000.alter

select customerName, creditlimit
from customers
where creditlimit>50000;

#3> display all products whose buyprice is  greater than 50.alter
select * from products
where buyPrice>50;

#/4>find all the employees who work in officeCode =1.//
select * from employees
where officeCode=1;

#5> display the producName and quantifyinStock for products with stock less than 1000.
select productName,
 quantityInStock
 from products
 where quantityInStock < 1000;
 
 #6>  show the customerName and country of customers from france or germany.
 select customerName,
 country
 from customers
 where country in('France' or 'Germany');
 
 # 7> find the totle number of customers.
 select count(*) as totle_customers
  from customers;
  
  # 8> display the highest creditlimit among all customers.
  select max(creditlimit) as highest_credit_limit
  from customers;
  
  #9> select the names of employee sorted by lastname in ascending orders;
  select firstName, lastName
  from employees
  order by lastName asc;
  
  #10> display the first 5 records from the products table;
  select * from products
  limit 5;
 


