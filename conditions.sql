-- if(condition,True statement,False statement)

use sakila;
select * from employees;

select first_name,department,salary,if(department='it',True,False) from employees;

select first_name,department,salary,if(department='it',salary*1.1,salary*1.05)
from employees;