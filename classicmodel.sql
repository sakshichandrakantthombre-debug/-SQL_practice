create database mydb;
drop database mydb;
show databases;

create table student(
sid int,
sname char(10),
sper float
);

use mydb;

show tables;


create table employee(
esal int,
ename char(20),
eid int
);

show tables;

drop table employee;

show tables;


insert into student
values (1, 'Ram', 89.76);

select * from student;


insert into student
values (2, 'sham', 89.76),
(3, 'jay', 90.70),
(4,'om',94.70),
(5,'vijay',79.00);

select * from student;

update student
set sper=94
where sid=5;

select * from student;

update student
set sname='pop'
where sid=2;

select *from student;
 
delete from student
where sid=5;

select *from student;

create database organisation;
drop database organisation;
show  databases;

create table company(
csal int,
cname char(20),
cid int
);
show tables;
show databases;

select * from company;

insert into company
values (1, "sakshi", 2000,
2, "durva", 7000,
3, "sangram", 6000 
);
show tables;
update company
set cname='shrushti'
where cid=2;
show tables;
select * from student;
use mydb;
select * from student;
describe student;

alter table student
add scity char(10);

alter table student
drop column scity;

alter table student
modify sname char(50);

alter table student
rename column sper to percent;

alter table student
rename to stud;
select * from stud;

truncate table stud;
select * from stud;
show tables;
select * from advertising;

show databases;

use classicmodels;
show tables;

select distinct city
from customers;
use classicmodels;
show tables;
select distinct city 
from customers;
select * from customers;
show databases;
show tables;
select * from customers;

Describe customers;
select customername, city
from customers;


select * from customers
where country = 'france';



select customernumber, customername, country
from customers;

select customername, phone
from customers;

select customername
from customers;

select customernumber, city, country
from customers;


select distinct country
from customers;

select * from customers
where country='USA';

select * from customers
where country='france';

select * from customers
where creditlimit>50000;

select * from customers
where creditlimit<50000;

select * from customers
where country = 'USA'
AND creditlimit>5000;


select customername, phone
from customers
where country ='USA';

select customernumber, customername, creditlimit
from customers
where country = 'USA';

select* from customers
where country = 'france' AND creditlimit>100000;


select customername, phone
from customers
where country = 'USA';

select customername, phone
from customers
where country='france' AND creditlimit>50000;

select customernumber, customerid, country
from customers
where creditlimit<20000 AND creditlimit>100000;



select customernumber, country
from customers
where country = 'UK' AND 'USA';

select * from customers
order by creditlimit desc;

select * from customers
order by creditlimit asc;

select * from products;

select * from customers
where country='UK'
order by creditlimit desc;


use classicmodels;
select * 
from products
where productline='classic cars' and msrp>20 and msrp<50
order by msrp desc;

select * from customers
where state is not null;

select * from customers
where status is null;

select * from customers
limit 5;

select * from customers
where country='USA'
order by creditlimit desc
limit 3, 2;

select * from customers
where country='USA'
order by creditlimit desc
limit 2 offset 3;

select * from customers
order by creditlimit desc
limit 4;

select * from customers
order by creditlimit asc
limit 5;


select * from customers
order by creditlimit desc
limit 0 offset  5;

select * from customers
where country='australia'
order by creditlimit desc
limit 3,4;

select * from customers
where country in ('usa', 'uk', 'spain');

select * from customers
where state in ('nv', 'ca', 'ny');

select * from customers
where creditlimit between 0 and 50000;

select country
from customers
where country like 'a%';

use classicmodels;
select * from customers
where creditlimit>100000;


select * from products
where msrp>50;

select * from products
where msrp between 20 and 50;

select * from customers
where creditlimit between 50000 and 100000;

select * from customers
where country = 'usa'
and creditlimit>100000;


select * from products
where productline = 'classsic cars'
and msrp>20 and msrp<50
order by msrp desc;

select * from products
order by msrp desc;

select * from customers
where country = 'usa' and 'france';

select * from products
where productline = 'motorcycle'
and msrp > 80
order by msrp desc;

select * from customers
where country= 'germany';

select * from customers
where contactfirstname like '%an%';

select * from products
where productname like '1%';

select * from customers
where city like 'n%';

select * from customers
where city like 'n%';

select * from employees
where employeenumber between 1200 and 1400;


select * from customers
where country in('usa', 'france', 'germany');

select * from products
where productline in ('classiccars', 'motorcycles');


select * from offices
where  city in('NYC', 'Paris');


select count(contactfirstname) as c
from customers;

select sum(creditlimit) as t 
from customers;

select * from  productlines;
select avg(buyprice) as totle
from products
where productline='Trucks and Buses';

select * from  classiccars;
select sum(buyprice) as totle
from products
where classiccars='mrp';



select avg(creditlimit) as t
from spain; 

 






select * from  productlines;
select min() as totle
from products
where productline='Trucks and buses';



select min(buyprice) as t
from payments
where productline='classiccars';


select min(amount) as a
from payments;


select avg(creditlimit) as c
from customers
where country='UK';

select country,count(country)
from customers
group by country;


select country,sum(creditlimit)
from customers
group by country;


 select country,min(creditlimit)
from customers
group by country;


 select country,avg(creditlimit)
from customers
group by country;

select country,avg(creditlimit)
from customers
group by country;


select country,sum(creditlimit) as s
from customers
group by country
order by s desc
limit 5;

select country,avg(creditlimit) as s
from customers
group by country,creditlimit
having creditlimit<13000;

select country,sum(creditlimit) as s
from customers
group by country
order by s desc
limit 5;

select country,count(creditlimit) as cnt
from customers
group by country
having cnt>=5
order by cnt desc;

select country,count(creditlimit) as cnt
from customers
group by country
having cnt>=5
order by cnt desc;


select productline,count(buyprice) as cnt,
sum(buyprice) as ttl,avg(buyprice) as average,
min(buyprice) as lowest,max(buyprice) as highest
from products
group by productline
order by ttl desc;

show tables;

select * from customers;
select avg(creditlimit) as t 
from customers;

# find out the customer details who's order is canceled;...
use classicmodels;
show tables;
select * from customers
where  orders in (select orders from orderdetail
where orders="cancle");

# find out the employee detaila who's is paris

select * from employees
where officecode in
 (select officecode from offices
where city='paris');

# find out the payment details who's order is on hold

select * from payments
where customerNumber in 
(select customerNumber from orders
where status ='on hold');

# find out the customer details who's purchase classic cars.

select * from customers
where productline in 
(select  productline 
from orders
where status='classic cars');
 
select productName, buyPrice
from products
where buyPrice>
(
 select avg(buyPrice)
 from products
 );
 
 
 select customerName
 from customers
 where customerNumber in
 (
 select customerNumber
 from orders
 );
 
 
 select productName, buyPrice
 from products
 where buyprice > 
 (
 select avg(buyprice)
 from products
 );
 
 # more higher creditlimit from customer:
 
 select customerName, creditlimit
 from customers
 Where creditlimit=(
 select max(creditlimit)
 from customers
 );
 
 # having orders customers
 
 select customerName 
 from customers
 where customerNumber  not in(
select customerNumber
from orders
);

# select the customer who's not taking payments;

select customerName
from customers
where customerName not in (
select customerNumber
from payments
);


# /*  who's product select that having less msrp:
 select productName, MSRP 
 from products
 where MSRP = (
 select min(MSRP)
 FROM products
 );
 
