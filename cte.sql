-- CTE =>  common temproray expreation
-- stroing a result on temprorary

use sakila;

with test as 
(select actor_id,count(film_id) as moviescount
from film_actor group by actor_id)

select sum(moviescount) from test where actor_id>10;

show databases;
use windowsdb;
-- 1st way
select * from employees as e where salary = (select max(salary) from employees where dept=e.dept);

-- 2nd way (using window)
select  * from 
(select *,max(salary) over(partition by dept) as deptmax from employees) as temp
where salary=deptmax;


-- 3rd way
with cte as
(select *, max(salary) over(partition by dept) as deptmax from employees)
select * from cte where salary=deptmax;

-- 4th way
with xyz as 
(select dept,max(salary) as deptmax from employees group by dept)
select * from employees join xyz where employees.dept=xyz.dept and
employees.salary=xyz.deptmax;
