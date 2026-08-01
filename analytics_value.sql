#1> lag() functionns using:
select customerNumber,
paymentDate,
amount,
lag(amount)over
(
partition  by
customerNumber
order by
paymentDate
) as
privious_payments
from payments;

#2> difference between the payemtns after value and before;
select customerNumber,
paymentDate,
amount,
amount-
lag(amount)over
(
partition  by
customerNumber
order by
paymentDate
) as
privious_payments
from payments;


#3> using the lead();
select customerNumber,
paymentDate,
amount,
lead(amount)over
(
partition  by
customerNumber
order by
paymentDate
) as
privious_payments
from payments;


#4> using the row_number;

select customerNumber,
paymentDate,
amount,
row_number()over
(
partition  by
customerNumber
order by
paymentDate
) as
privious_payments
from payments;


#5> using rank function()
select customerNumber,
paymentDate,
amount,
rank()over
(
partition  by
customerNumber
order by
paymentDate
) as
privious_payments
from payments;

#6> using first-value()
select customerNumber,
paymentDate,
amount,
first_value(amount)over
(
partition  by
customerNumber
order by
paymentDate
) as
privious_payments
from payments;

#7> using the last_value():
select customerNumber,
paymentDate,
amount,
last_value(amount)over
(
partition  by
customerNumber
order by
paymentDate
) as
privious_payments
from payments;


#8> using the count();
select customerNumber,
paymentDate,
amount,
count(amount)over
(
partition  by
customerNumber
order by
paymentDate
) as
privious_payments
from payments;


#9> using the min();
select customerNumber,
paymentDate,
amount,
min(amount)over
(
partition  by
customerNumber
order by
paymentDate
) as
privious_payments
from payments;


#10> using the max();

select customerNumber,
paymentDate,
amount,
max(amount)over
(
partition  by
customerNumber
order by
paymentDate
) as
privious_payments
from payments;