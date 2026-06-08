-- Recursive CTE  => it is a sql query that repeats itself 
--                   untill the condition is met.
 
-- union => Remove duplicate values
-- union all => Return all values 
-- intersect  => Return only common values
-- except  => in first and not in second
 
 
 use sakila;
 select * from actor where actor_id between 1 and 3
 union
 select * from actor where actor_id in (3,5);
 
 -- Syntex of recursive cte
 with recursive cte as
 (select 1 as n
 union all
 select n+1 from cte
 where n<10)
 select * from cte;
 
-- 
create database race;
use race;
create table employees(
						emp_id int,
                        emp_name varchar(50),
                        manager_id int);
                        
insert into employees values
(1,'CEO',NULL),
(2,'John',1),
(3,'Mary',1),
(4,'David',2),
(5,'Lisa',2),
(6,'Tom',4);

select * from employees;



with cte as 
(select emp_id as bid,
		emp_name as bname,
        emp_name as hireachy
from employees
where manager_id is null)
select * from cte
union all
select emp.emp_id,emp.emp_name, 
	   concat(emp.emp_name,'->',cte.bname) as hireachy
from employees as emp
join cte
where emp.manager_id=cte.bid;



with recursive cte as 
(select emp_id as bid,
		emp_name as bname,
        emp_name as hireachy
from employees
where manager_id is null
union all
select emp.emp_id,emp.emp_name, 
	   concat(emp.emp_name,'->',cte.hireachy) as hireachy
from employees as emp
join cte
where emp.manager_id=cte.bid)
select * from cte;









