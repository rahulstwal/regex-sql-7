--                           15-may-2026

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

select emp_id,name,department,salary,sum(salary) over(order by department,emp_id ) from employees;


--                     18-May-2026
--  absence

create database windowsdb;
use windowsdb;


-- ============================================
--  Create the employees table
-- ============================================
CREATE TABLE employees (
  emp_id    INT,
  name      VARCHAR(50),
  dept      VARCHAR(30),
  salary    INT,
  hire_year INT
);
 
-- ============================================
--  Insert sample data (12 employees)
INSERT INTO employees VALUES
  (1,  'Alice',   'IT',      90000, 2019),
  (2,  'Bob',     'IT',      75000, 2020),
  (3,  'Charlie', 'IT',      82000, 2018),
  (4,  'Diana',   'HR',      68000, 2021),
  (5,  'Eve',     'HR',      72000, 2019),
  (6,  'Frank',   'HR',      65000, 2022),
  (7,  'Grace',   'Sales',   55000, 2020),
  (8,  'Henry',   'Sales',   60000, 2021),
  (9,  'Iris',    'Sales',   58000, 2019),
  (10, 'Jack',    'Finance', 95000, 2017),
  (11, 'Karen',   'Finance', 88000, 2018),
  (12, 'Leo',     'Finance', 91000, 2020);
  
  
  --            19-May-2026


select * from employees;
select * ,row_number() over(order by salary),
rank() over(order by salary),
dense_rank() over(order by salary) from employees;

select *, dense_rank() over(partition by dept order by salary) from employees;

select *, dense_rank() over(partition by dept order by hire_year) from employees;


-- find the max salary of the employee is the particular department
select * from employees as e where salary = (select max(salary) from employees where dept=e.dept);

-- max
select * from
( select * , max(salary) over(partition by dept) as depsalary from employees ) as trh 
where salary=depsalary;

select *, rank() over(partition by dept order by salary desc) as `rank` from employees;

select * from
( select *, rank() over(partition by dept order by salary desc) as rak from employees ) as temp
where rak=1;


-- how the person second highest salary
select * from
( select * , dense_rank() over(order by salary desc) as de from employees) as xy
where de=2;


select * from employees where salary=
(select max(salary) from employees where salary <(select max(salary) from employees));

-- second highest nikalne ke liye subquery ka use kare
select max(salary) from employees where salary<(select max(salary) from employees);


-- find 4th lowest salary
select  * ,dense_rank() over(order by salary ) as sal from employees;

select * from 
(select  * ,dense_rank() over(order by salary ) as sal from employees) as x
where sal=4; 

-- sqlzoo window function
-- rows between => n following, unbounded following, precending

