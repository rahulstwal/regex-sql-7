-- WINDOWS FUNCTION =>  window function which gives the calculation of the rows for each rows
 
-- window function perform calculation on multiple rows and give you the output for each rows

-- a window function performs a calculation across  a set of rows related
-- to current row(called the window) without collapsing rows into a single result


use shadidb;
select * from employees;

select emp_id,name,avg(salary) from employees;          -- gives error

select emp_id,name,salary,avg(salary) over() from employees;       -- using windows function

select emp_id,name ,salary,max(salary) over(), salary-avg(salary) over() from employees;

select emp_id,name,salary,count(*) over(),min(salary) over(),max(salary) over(),sum(salary) over() from employees; 


select emp_id,name,salary,sum(salary) over(), concat(round((salary/sum(salary) over())*100),'%') from employees;


select emp_id,name,salary,sum(salary) over(order by salary) from employees;

-- runing sum order by department duplicate values 
select emp_id,name,department,salary,sum(salary) over(order by department) from employees;

select emp_id,name,department,salary,sum(salary) over(order by department,emp_id) from employees;
