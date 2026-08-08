create database employee_db;
show databases;

create table employee (
empid varchar(5),
ename varchar(50),
salary Int,
depid varchar(5)
);

show tables;
INSERT INTO employee (empid,
 ename, salary, depid)
VALUES
('E1', 'john', 45000, 'D1'),
('E2', 'Mary', 60000, 'D2'),
('E3','steve', 75000, 'D3'),
('E4', 'Helen', 85000, 'D4'),
('E5', 'joe', 35000, 'D7');

select * from employee;


create table department(
depid varchar(2) primary key,
dname varchar(20)
);

insert into department (depid, dname)
values
('D1', 'IT'),
('D2', 'HR'),
('D3', 'Admin'),
('D4', 'Finance'),
('D5', 'Sales');

select * from department;


select e.empid, e.ename, e.saemployeelary, d.depid, d.dname
from employee as e INNER JOIN department as d
ON e.depid=d.depid;
 
 select * from employee;

 
 select ename,salary
 from employee
 where salary>=500000;
 
 select * from employee
 where salary=(select min(salary)
 from employee);
 
 
select * from employee
 where salary=(select max(salary)
 from employee);
 
 
 
 select * from employee
 where salary=(select avg(salary)
 from employee);
 
 
 select * from employee
 where depid in 
 (select depid
 from department
 where dname='admin');
 
 
select * from department;


 #  (in used for multiple stament)#
 select * from employee
 where depid in 
 (select depid
 from department
 where dname='Finance');
 
 
select distinct ename  from employee;

select * 
from employee
where salary=35000;

select * 
from employee
where salary>35000;

# operator AND 
select * from employee
where salary>60000 AND ename="steve";


select * from employee
where salary>60000 Or ename="joy";



select * from employee
where salary in (75000, 60000, 50000);

#limit
select * from employee
where salary<80000
limit 3;

select * from employee
order by ename asc;

select * from employee
order by ename desc
limit 3;

# agreegate function
#count()
#max()
#min()
#sum()
#avg()

select max(salary)from employee;
select count(salary)from employee;
select sum(salary) from employee;

select ename, count(salary);


select ename,count(salary)
from employee
group by ename;


select ename , avg(salary)
from employee
group by ename
order by avg(ename) asc;

select ename 
from employee
group by ename
order by ename asc;

# having clause:

select * from employee;

select empid, count(salary)
from employee
group by empid
having max(salary)>80000
order by empid asc;

select depid
from employee
where salary = 75000
group by depid
having max(salary)>=50000;

update employee
set ename= 'sakshi'
where ename='Mary';

show tables;

select * from employee;


update employee
set ename='pop'
where ename='steve';

select * from employee;   

update employee
set salary= salary + 1;
select * from employee;

# / joins  the table 
#inner join
# fetch employee detail there department;
select * from employee;
select * from department;
# inner join;

select * from employee 
inner join department
on employee.empid=department.depid;

# left joinn;
select * from employee 
left join  department
on employee.empid=department.depid;

# right joins;
select * from employee 
right join  department
on employee.empid=department.depid;

# full join;
select * from employee 
right join  department
on employee.empid=department.depid
union
select * from employee 
left join  department
on employee.empid=department.depid;

select * from department;

select e.empid,e.ename,e.salary,d.depid,d.dname
from employee as e inner join department as d
on e.depid=d.depid;

 
 
 select e.empid,e.ename,e.salary,d.depid,d.dname
from employee as e left join department as d
on e.depid=d.depid;

  select e.empid,e.ename,e.salary,d.depid,d.dname
from employee as e right join department as d
on e.depid=d.depid;


 select e.empid,e.ename,e.salary,d.depid,d.dname
from employee as e left join department as d
on e.depid=d.depid
union
  select e.empid,e.ename,e.salary,d.depid,d.dname
from employee as e right join department as d
on e.depid=d.depid;

# exlusive join:
select * from employee 
left join  department
on employee.empid=department.depid
where department.depid is null;


select * from employee 
left join  department
on employee.empid=department.depid
where employee.depid is null;



select * from employee
cross join department;

create table mgr(
empid char(10),
ename char(10),
salary int,
mgrid char(10)
);


insert into mgr values
('E1', 'john', 45000, ''),
('E2', 'Mary', 60000, 'E1'),
('E3','steve', 75000, 'E1'),
('E4', 'Helen', 85000, 'E2'),
('E5', 'joe', 35000, 'E3');

show tables;
select * from mgr;

# fetch employee name with there respected manager;

select * from mgr;
select e.ename, m.ename
from mgr as e left join mgr as m
on m.empid=e.mgrid;

#find out the highest salary employee details;
select max(salary) from employee;
select max(salary) from mgr;

select * 
 from employee
 order by salary desc
limit 1;

select * from employee
where salary = (select max(salary) from employee);


# find the department highest salarly;
select * from mgr
where salary = (select max(salary) from mgr);



