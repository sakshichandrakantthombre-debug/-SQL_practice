create  database BankDB;
use BankDB;

create table Customers (
CustomerID int primary key,
Name varchar(50),
Balance decimal(10,2)
);

insert into Customers (CustomerID,
Name, Balance)
Values
(101, 'Asha',5000),
(102,'Ravi', 3000);

select * from Customers;

start transaction;
# new transaction have starting;
#next changes is temparary;
#when from commit save;

update Customers
set Balance = Balance + 1000
where CustomerID=101;
select * from Customers;


update Customers
set Balance = Balance - 1000
where CustomerID=102;

select *from customers;

### durability proporties use all changes permanant save;

commit;
select * from Customers;

## savepoint used for in the transaction one point create when generated the errornot all transaction rollback..
start transaction;
savepoint sq1;
commit;


savepoint sql1;

update Customers
set Balance = Balance +1000
where CustomerId =102;


update Customers
set Balance = Balance + 1000
where CustomerID=101;
select * from Customers;

savepoint sq2;

update Customers
set Balance = Balance - 1000
where CustomerID=102;
commit;
