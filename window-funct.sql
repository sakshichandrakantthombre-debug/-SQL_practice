use classicmodels;
# windows functions using :

#1> select employeeName:
select employeeName
department,
salary,
avg(salary) over (partition by deparartment)
as avg_salary
from employees;
 
# 2> select orderNumber from row numbers;
select
 customerNumber,
orderNumber,
ROW_Number() over()
from orders;

#3> select detail using windows function using orderdate row-number;
select customerNumber,
orderNumber,
orderDate,
row_number() over(
order by orderDate
) as row_no
from orders;

#4>using percent-rank;
select 
customerNumber,
orderNumber,
orderDate,
percent_rank() over(
order by orderDate
) as row_no
from orders;

#5> using the dense-rank;
select 
customerNumber,
orderNumber,
orderDate,
dense_rank() over(
order by orderDate
) as row_no
from orders;

#6> using the rank function;
select 
customerNumber,
orderNumber,
orderDate,
rank() over(
order by orderDate
) as row_no
from orders;

#7> using row number;
select 
customerNumber,
orderNumber,
orderDate,
row_number() over(
order by orderDate
) as row_no
from orders;

#8> row-column;

select
productName,
quantityInStock,
rank() over(
order by quantityInStock
) as row_no
from products;


#9> using product table for row_number;
select
productName,
quantityInStock,
row_number() over(
order by quantityInStock
) as row_no
from products;

#10> using percentage-rank;

select
productName,
quantityInStock,
rank() over(
order by quantityInStock
) as row_no
from products;