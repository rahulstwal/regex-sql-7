-- select current_user();

-- show databases;                                  -- will show kon kon se  database hai

-- use sakila;                                      -- jis database ko use kar rhe hai

-- show tables;                                     -- table in the database
-- select * from customer;                          -- ddata access karna chate hai 

-- -- one column access
-- select customer_id from customer;                -- to access the single column
-- select customer_id,first_name from customer;     -- to access multipal column

-- select first_name,customer_id from customer;

-- select first_name,customer_id,first_name from customer;

-- select * from payment;

-- select payment_id,amount from payment;

-- select customer_id,first_name from customer;

-- select customer_id,first_name,customer_id+10 from customer;      -- not seeen changes in original

-- select customer_id,Customer_id,CUSTOMER_ID from customer;         -- case insensitive

-- select customer_ID FROM CUStoMER;

select * from customer where customer_id=4;                       -- all columns and particular row 

select customer_id,first_name,last_name from customer where customer_id=4;  

select customer_id,first_name,last_name from customer where customer_id=4; 
select customer_id,first_name,last_name from customer where first_name='NINA';         -- to access the string

-- 20 april 2026 
show databases;
use sakila;    
show tables;
select * from customer;

select first_name,customer_id from customer;
-- where cluase => to filter

select first_name,customer_id from customer where customer_id>5;
select first_name,customer_id from customer where first_name='LISA';

-- range of values filter => between
select * from customer where customer_id between 2 and 5;

-- in => specific values
select* from customer where customer_id in (2,5);
select * from customer where first_name in ('lisa','patricia');

select * from customer where first_name in ('LISA',10);

select * from customer where first_name between 'LISA' and 'PATRICIA';

select * from customer where address_id between 1 and 6;

select * from customer where customer_id=2 or customer_id>7;

-- dono conditions me se ek bhi condition shi huyi to 
select * from customer where first_name='MARION' or store_id=2;
-- dono condition shi ho
select * from customer where first_name='MARION' and store_id=2;

select * from customer where
store_id=2 and store_id=5;

select * from customer where first_name='lisa' or store_id=2 and store_id=5;


select * from customer where customer_id>=3 and customer_id<=6;


select * from customer where customer_id>=3 or customer_id<=6 and 
first_name='patricia';

select * from customer where customer_id>=6 or customer_id<2 and first_name='PATRICIA';

select * from customer where customer_id>3 or customer_id>2 and first_name='PATRICIA';

select * from customer where customer_id not between 2 and 5;




show databases;
use world;
show tables;
show world;
select * from country;

use sakila;
show tables;
select * from customer;

use world;
select * from customer;

show databases;

use world;
show tables;
select * from city;
select name from city where name='kabul';

use world;
show tables;
select * from country;
select * from country where name='france';
select * from country where name in ('india','china','russia','brazil');

select name from country where population between 250000 and 300000;

select name from country where population >200000;
SELECT name, area*2 FROM country WHERE population = 64000;
select * from country;


show databases;
use world;
show tables;
select * from world;
select * from sakila;
use sakila;
select * from customer;
use world;
show tables;
select name from country where name like 'f%';

select name from country where name like 'T%land' ;

select name from country where name like 'T%n%';
select name from country where name like 't%land';

select *from country;
select population from country where name='france';
select name,surfacearea  from world where surfacearea between 250000 and 300000;
select * from country;
select * from city;
show databases;
use world;
show tables;






show databases;
use world;
show tables;

select * from country where name like'f%';
select name from country where name like'f%';

select * from customer where first_name like 'jo%';

show databases;
use sakila;
show tables;
select * from customer where first_name like 'jo%';

select * from customer where concat(first_name,' ',last_name)='MARY SMITH';

select * from customer where concat(first_name,' ',last_name) like 'mary smith';

show databases;
use sakila;
show tables;
select * from customer;
select first_name,concat_ws(' ','mrs',first_name,'sharma') from customer;

select first_name,concat_ws('<=>','Mrs',first_name,'sharma') from customer;

select first_name,email from customer;

-- substr => index start with 1

select first_name,email ,substr(email,3) from customer;

select first_name,substr(first_name,3,2) from customer;

-- instr ==> first time word ki position btata hai
select first_name, instr(first_name,'A') from customer; 

select email,substr(email,1,instr(email,'@')-1) from customer;
select email,substr(email,instr(email,'@')+1) from customer;

select first_name, replace(first_name,'A','@') from customer;

select first_name,lpad(first_name,6,'@') from customer;

select first_name,rpad(first_name,6,'&') from customer;

-- string function
-- number ,datas

use sakila;
select * from customer;

-- show current data = yyyy-mm-dd
select current_date();
select current_time();
select current_timestamp(),now();
select now();
select * from payment;

select payment_id, payment_date, now() from payment;

select payment_id, payment_date, adddate(payment_date,-2) 
from payment;

-- interval se hum hour month year teeno add kar sakte hai
select payment_id, payment_date, 
adddate(payment_date,interval 2 minute) 
from payment;

select payment_id, datediff(now(), payment_date) from payment;


select payment_id, datediff(now(), payment_date) from payment;

-- month function => extract month in the given columns 
select payment_id, payment_date, month(payment_date)
from payment where month(payment_date)=2;

select payment_id, payment_date, year(payment_date)
from payment where year (payment_date)=2006;

select payment_date, extract(quarter from payment_date) 
from payment;

select payment_date, month(payment_date) from payment;
select payment_date, concat('current month is :',
month(payment_date)) from payment;

select payment_date, 
date_format(payment_date, 'current year is %y') 
from payment;

select payment_date, 
date_format(payment_date, 'current year is %h')
from payment;

select payment_date,
date_format(payment_date, 'current year is %d')
from payment;
use employees;
show databases;


-- functions
-- numeric functions
-- round function = ager decimal me value .5 se bdi hai to 
--  agli value dega or .5 se kam hai to kam wali value degi
select 43.76;
select 43.76, round(43.26), round(56.53);

-- decimal ko round off karne 
select 43.76, round(43.26,1),round(43.26,1);  
select 43.256, round(43.266,2);

-- decimal se phly wali value round off 
select 6.45, round(3.45,-1);

# one place => tenth me convert hogi
# tenth wali hundred me convert
select 16.647, round(26.647, -1);
select 36.647, round(36.647, -2);

select 34.647, round(2763.647, -3);


-- trancate 
select round(345.6829,2), truncate(345.6859,2);

select mod(10,2);
# ceil = decimal ke baad koi bhi value aa jayegi to ye round up karneuper wali value me convert kar dega
# floor => piche wali value deta hai
select ceil(5.000000006), floor(5.9999999);





use sakila;

CREATE TABLE employees (
    emp_id       INT            PRIMARY KEY,
    first_name   VARCHAR(50)    NOT NULL,
    last_name    VARCHAR(50)    NOT NULL,
    email        VARCHAR(100)   NOT NULL,
    department   VARCHAR(50),
    job_title    VARCHAR(60),
    salary       DECIMAL(10,2),
    hire_date    DATE,
    birth_date   DATE,
    phone        VARCHAR(20),
    city         VARCHAR(50),
    country      VARCHAR(50),
    is_active    CHAR(1)
);


INSERT INTO employees VALUES
(1,  'Alice',  'Smith',    'alice.smith@gmail.com', 'IT',        'Software Engineer',    85000.00,'2019-03-15','1990-06-20','555-1001','New York',     'USA','Y'),
(2,  'Bob',    'Johnson',  'bob.j@yahoo.com',       'HR',        'HR Manager',           72000.00,'2020-07-01','1985-11-05','555-1002','Chicago',      'USA','Y'),
(3,  'Carol',  'Williams', 'carol.w@gmail.com',     'Finance',   'Accountant',           65000.00,'2018-01-10','1992-03-14','555-1003','Houston',      'USA','Y'),
(4,  'David',  'Brown',    'david.b@outlook.com',   'IT',        'DevOps Engineer',      90000.00,'2021-05-20','1988-09-25','555-1004','Los Angeles',  'USA','Y'),
(5,  'Emma',   'Jones',    'emma.j@gmail.com',      'Marketing', 'Marketing Lead',       78000.00,'2017-11-30','1991-07-08','555-1005','Phoenix',      'USA','Y'),
(6,  'Frank',  'Garcia',   'frank.g@yahoo.com',     'Sales',     'Sales Representative', 55000.00,'2022-02-14','1994-02-28','555-1006','Philadelphia', 'USA','N'),
(7,  'Grace',  'Martinez', 'grace.m@gmail.com',     'IT',        'QA Engineer',          68000.00,'2020-09-01','1993-12-01','555-1007','San Antonio',  'USA','Y'),
(8,  'Henry',  'Davis',    'henry.d@outlook.com',   'Finance',   'Financial Analyst',    76000.00,'2019-06-15','1989-04-17','555-1008','San Diego',    'USA','Y'),
(9,  'Isla',   'Wilson',   'isla.w@gmail.com',      'HR',        'Recruiter',            60000.00,'2021-10-05','1995-08-22','555-1009','Dallas',       'USA','Y'),
(10, 'Jack',   'Moore',    'jack.m@yahoo.com',      'Marketing', 'SEO Specialist',       58000.00,'2023-01-09','1997-01-15','555-1010','San Jose',     'USA','Y'),
(11, 'Karen',  'Taylor',   'karen.t@gmail.com',     'Sales',     'Sales Manager',        82000.00,'2016-04-20','1984-05-30','555-1011','Austin',       'USA','Y'),
(12, 'Liam',   'Anderson', 'liam.a@outlook.com',    'IT',        'Data Scientist',       95000.00,'2020-11-15','1987-10-10','555-1012','Jacksonville', 'USA','Y'),
(13, 'Mia',    'Thomas',   'mia.t@gmail.com',       'Finance',   'Tax Consultant',       71000.00,'2022-06-01','1993-06-15','555-1013','Columbus',     'USA','Y'),
(14, 'Noah',   'Jackson',  'noah.j@yahoo.com',      'IT',        'System Admin',         80000.00,'2018-08-25','1990-02-14','555-1014','Charlotte',    'USA','N'),
(15, 'Olivia', 'White',    'olivia.w@gmail.com',    'HR',        'HR Assistant',         50000.00,'2023-03-20','1998-09-05','555-1015','Indianapolis', 'USA','Y'),
(16, 'Paul',   'Harris',   'paul.h@outlook.com',    'Marketing', 'Content Writer',       52000.00,'2021-07-10','1996-11-20','555-1016','San Francisco','USA','Y'),
(17, 'Quinn',  'Clark',    'quinn.c@gmail.com',     'Sales',     'Sales Representative', 56000.00,'2022-09-15','1995-04-11','555-1017','Seattle',      'USA','Y'),
(18, 'Rachel', 'Lewis',    'rachel.l@yahoo.com',    'Finance',   'Budget Analyst',       73000.00,'2019-12-01','1991-01-30','555-1018','Denver',       'USA','Y'),
(19, 'Sam',    'Robinson', 'sam.r@gmail.com',       'IT',        'Cloud Architect',     105000.00,'2017-05-22','1986-07-19','555-1019','Nashville',    'USA','Y'),
(20, 'Tina',   'Walker',   'tina.w@outlook.com',    'HR',        'Training Manager',     69000.00,'2020-03-08','1988-12-03','555-1020','Baltimore',    'USA','Y'),
(21, 'Uma',    'Hall',     'uma.h@gmail.com',       'Marketing', 'Brand Manager',        77000.00,'2018-10-17','1990-08-25','555-1021','Louisville',   'USA','N'),
(22, 'Victor', 'Young',    'victor.y@yahoo.com',    'Sales',     'Sales Director',       98000.00,'2015-02-10','1980-03-07','555-1022','Portland',     'USA','Y');



-- Q 1.
select emp_id,first_name,last_name,department,salary from employees where salary>=65000 and salary<=85000;

-- Q 2. 
select emp_id,first_name,last_name,department,job_title from employees where department in('it','finance');

-- Q 3. 
select emp_id,first_name,last_name,department from employees where last_name like '%son';

-- Q 4.
select emp_id,first_name,last_name,job_title,salary from employees where department='it';

-- Q 5. 
select emp_id, upper(first_name), lower(last_name), salary from employees where department='finance';

-- Q 6. 
select emp_id, first_name,length(first_name) as name_length,department
 from employees  where length(first_name)>4;

-- Q 7. 
select emp_id,concat(first_name,' ',last_name) as full_name,
length(concat(first_name,' ',last_name)) as full_name_length
,department from employees where department='marketing';

-- Q 8.
select * from employees;
select emp_id,first_name,last_name,hire_date,year(hire_date) as hire_year
from employees where department='finance';

-- Q 9. 
select emp_id,first_name,last_name,
round(salary,-4) as rounded_salary,
salary%10000 as salary_remainder 
from employees where department='it';

-- Q 10. 
select emp_id,first_name,last_name,email from employees where email like '%outlook.com';

-- Q 11. 
select emp_id,first_name,last_name,hire_date,datediff(now(),hire_date) as days_employed from employees
where datediff(now(),hire_date)>2000 
order by days_employed desc;

-- Q 12. 
select emp_id, first_name,last_name,email,
substr(email,1,instr(email,'@')-1) as username from employees where department='hr';

-- Q 13. 
select concat(first_name,' ',last_name),department,salary
from employees  where department not in ('it','finance') 
and (salary<60000 or salary>80000)
order by salary desc,department desc;

-- Q 14.
use sakila;
select emp_id,upper(first_name),last_name,email,
upper(substr(email,1,instr(email,'@')-1)) as username_upper,
char_length(substr(email,1,instr(email,'@')-1)) as username_length from employees
where char_length(substr(email,1,instr(email,'@')-1))>6
order by char_length(substr(email,1,instr(email,'@')-1)) desc;


-- Q 15.
select emp_id, concat(first_name,' ',last_name) as full_name
,birth_date,(year(now()) - year(birth_date))-1 as age,salary,department 
from employees where salary>65000
order by (year(now()) - year(birth_date));

select * from employees;







-- Date 29-April-2026
-- order by => to sort given column
-- order by => Ascending order
-- desc => decending order

select * from employees order by salary desc;

select first_name, department, salary from employees order by department,salary;

select salary,hire_date,year(hire_date) from employees order by year(hire_date),salary;

-- multi_row_function => applied on multiple row gives 1 output
-- distinct => gives uniqe values

select distinct (department) from employees;    -- single rows
select distinct department,salary from employees;    -- multiple rows

select count(department) from employees;  -- count function => do not count null value ( null=empty)

select * from address;
select count(district), count(address_id), count(address2) from address;

select * from employees;

select sum(salary), count(salary),avg(salary),min(salary),max(salary) from employees;

select sum(salary) as total_salary from employees;


-- 30-April-2026
-- NULL = no data
-- group by
select sum(salary),count(salary),avg(salary) from employees;

select sum(salary) from employees where department='it';

select sum(salary) from employees where department='finance';

select department from employees group by department;

select department, count(department) from employees group by department;

select department ,sum(salary) from employees group by department;

select department, sum(salary), count(department), avg(salary) from employees group by department;

select job_title, sum(salary) from employees group by job_title;


select * from payment;
-- Q 1.
select sum(amount),avg(amount) from payment;

-- Q 2.
select count(customer_id) from payment where customer_id=1;

-- Q 3.
select count(customer_id) from payment where customer_id in (2,5);

-- Q 4
select avg(amount) from payment where year(payment_date)=2025;

-- Q 5.
select customer_id,count(customer_id) from payment group by customer_id;

-- Q 6. 
select sum(amount) from payment where customer_id>3;

-- Q 7.
select customer_id,sum(amount) from payment group by customer_id;

-- Q 8. 
select sum(amount) from payment;

-- Q 9.
select customer_id,avg(amount) from payment group by customer_id;

-- Q 10
select month(payment_date),sum(amount) from payment group by month(payment_date);

-- Q 11.
select month(payment_date) from payment group by (month(payment_date));
select customer_id from payment group by customer_id;
select * from payment;

