create database  panda;
use panda;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(20),
    salary INT,
    manager_id INT NULL,
    hire_year INT
);

INSERT INTO employees VALUES
(101, 'Alice Johnson', 'IT', 72000, NULL, 2018),
(102, 'Bob Smith', 'IT', 65000, 101, 2019),
(103, 'Carol White', 'HR', 58000, NULL, 2017),
(104, 'David Brown', 'HR', 54000, 103, 2020),
(105, 'Eva Green', 'Finance', 80000, NULL, 2016),
(106, 'Frank Black', 'Finance', 75000, 105, 2018),
(107, 'Grace Lee', 'IT', 68000, 101, 2021),
(108, 'Henry Wilson', 'Marketing', 60000, NULL, 2017),
(109, 'Ivy Turner', 'Marketing', 56000, 108, 2022),
(110, 'Jack Davis', 'Finance', 70000, 105, 2019),
(111, 'Karen Moore', 'IT', 63000, 101, 2020),
(112, 'Leo Harris', 'HR', 50000, 103, 2021),
(113, 'Mia Clark', 'Marketing', 62000, 108, 2018),
(114, 'Nate Lewis', 'Finance', 78000, 105, 2019),
(115, 'Olivia Walker', 'IT', 71000, 101, 2017),
(116, 'Paul Hall', 'HR', 53000, 103, 2020),
(117, 'Quinn Young', 'Marketing', 59000, 108, 2021),
(118, 'Rachel King', 'Finance', 82000, 105, 2016),
(119, 'Sam Scott', 'IT', 66000, 101, 2022),
(120, 'Tina Adams', 'HR', 55000, 103, 2019);


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    amount INT,
    order_date DATE,
    status VARCHAR(20)
);

INSERT INTO orders
VALUES
(1001, 201, 301, 1500, '2024-01-05', 'Delivered'),
(1002, 202, 302, 2300, '2024-01-12', 'Delivered'),
(1003, 203, 303, 800, '2024-02-03', 'Delivered'),
(1004, 201, 304, 3200, '2024-02-14', 'Delivered'),
(1005, 204, 301, 1100, '2024-03-01', 'Pending'),
(1006, 205, 302, 4500, '2024-03-15', 'Delivered'),
(1007, 202, 303, 950, '2024-03-22', 'Cancelled'),
(1008, 206, 304, 2100, '2024-04-05', 'Delivered'),
(1009, 203, 301, 1750, '2024-04-18', 'Pending'),
(1010, 207, 302, 3300, '2024-04-30', 'Delivered'),
(1011, 204, 303, 680, '2024-05-10', 'Cancelled'),
(1012, 208, 304, 2900, '2024-05-22', 'Delivered'),
(1013, 205, 301, 1200, '2024-06-08', 'Delivered'),
(1014, 201, 302, 2700, '2024-06-15', 'Pending'),
(1015, 209, 303, 500, '2024-06-28', 'Delivered'),
(1016, 206, 304, 3800, '2024-07-07', 'Delivered'),
(1017, 207, 301, 1600, '2024-07-19', 'Delivered'),
(1018, 210, 302, 4100, '2024-07-25', 'Delivered'),
(1019, 208, 303, 720, '2024-08-02', 'Cancelled'),
(1020, 209, 304, 2200, '2024-08-14', 'Delivered');


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price INT,
    stock_qty INT
);
INSERT INTO products
(product_id, product_name, category, price, stock_qty)
VALUES
(301, 'Laptop', 'Electronics', 55000, 30),
(302, 'Smartphone', 'Electronics', 22000, 80),
(303, 'Headphones', 'Electronics', 3500, 120),
(304, 'Monitor', 'Electronics', 18000, 45),
(305, 'Keyboard', 'Accessories', 1500, 200),
(306, 'Mouse', 'Accessories', 900, 250),
(307, 'Desk Chair', 'Furniture', 8500, 40),
(308, 'Standing Desk', 'Furniture', 22000, 15),
(309, 'Webcam', 'Electronics', 4200, 70),
(310, 'USB Hub', 'Accessories', 1200, 180),
(311, 'Notebook', 'Stationery', 150, 500),
(312, 'Pen Set', 'Stationery', 250, 600),
(313, 'Printer', 'Electronics', 12000, 25),
(314, 'Scanner', 'Electronics', 9000, 20),
(315, 'External SSD', 'Electronics', 7500, 60),
(316, 'Lamp', 'Furniture', 2200, 90),
(317, 'Whiteboard', 'Office Supplies', 3800, 35),
(318, 'Cable Organiser', 'Accessories', 600, 300),
(319, 'Power Bank', 'Electronics', 2800, 100),
(320, 'Smart Watch', 'Electronics', 15000, 55);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    country VARCHAR(50),
    join_year INT
);
INSERT INTO customers
(customer_id, customer_name, city, country, join_year)
VALUES
(201, 'Aarav Mehta', 'Mumbai', 'India', 2021),
(202, 'Priya Sharma', 'Delhi', 'India', 2020),
(203, 'Rohan Gupta', 'Pune', 'India', 2022),
(204, 'Sunita Patel', 'Ahmedabad', 'India', 2021),
(205, 'Vikram Rao', 'Bangalore', 'India', 2019),
(206, 'Neha Singh', 'Chennai', 'India', 2023),
(207, 'Arjun Kumar', 'Hyderabad', 'India', 2020),
(208, 'Deepa Nair', 'Kochi', 'India', 2022),
(209, 'Sanjay Joshi', 'Jaipur', 'India', 2021),
(210, 'Meera Iyer', 'Coimbatore', 'India', 2023),
(211, 'Ravi Verma', 'Lucknow', 'India', 2020),
(212, 'Anita Das', 'Kolkata', 'India', 2019),
(213, 'Kiran Reddy', 'Vizag', 'India', 2022),
(214, 'Pooja Shah', 'Surat', 'India', 2021),
(215, 'Amit Bose', 'Nagpur', 'India', 2023),
(216, 'Tara Menon', 'Trivandrum', 'India', 2020),
(217, 'Nikhil Kulkarni', 'Nashik', 'India', 2022),
(218, 'Swati Chatterjee', 'Bhopal', 'India', 2019),
(219, 'Rahul Pandey', 'Patna', 'India', 2021),
(220, 'Divya Tiwari', 'Indore', 'India', 2023);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30),
    budget INT,
    location VARCHAR(50),
    head_id INT
);

INSERT INTO departments
(dept_id, dept_name, budget, location, head_id)
VALUES
(1, 'IT', 500000, 'Bangalore', 101),
(2, 'HR', 200000, 'Mumbai', 103),
(3, 'Finance', 600000, 'Delhi', 105),
(4, 'Marketing', 300000, 'Chennai', 108);

--------------------------- 
-- Q.1
select emp_name,department,salary from employees
where salary > (select avg(salary) from employees)
order by salary desc;
 
-- Q.2
select emp_id,emp_name,department,salary from employees
where salary = (select max(salary) from employees);

-- Q.3
select emp_id,emp_name,department,salary from employees
where salary = (select min(salary) from employees);

-- Q.4
select emp_name,department,hire_year from employees 
where  hire_year = (select hire_year from employees 
where emp_name='Rachel king') and
emp_name != 'Rachel king';

-- Q.5
select product_name,category,price from products
where price > (select avg(price) from products)
order by price desc;

-- Q.6
select product_id,product_name,category,price from products
where price = (select max(price) from products);

-- Q.7
select product_id,product_name,category,price from products
where price = (select min(price) from products);

-- Q.8
select order_id,customer_id,amount from orders
where amount > (select avg(amount) from orders)
order by amount desc;

-- Q.9
select order_id,customer_id,amount,order_date from orders
where amount = (select max(amount) from orders);

-- Q.10
select customer_id,customer_name,city from customers
where customer_id in (select customer_id from orders 
group by customer_id
having count(customer_id)>=1);

-- Q.11
select customer_id,customer_name,city from customers
where customer_id not in (select customer_id from orders 
group by customer_id
having count(customer_id)>=1);

-- Q.12
select product_id,product_name,category,price from products
where product_id in (select product_id from orders 
group by product_id having count(customer_id) >= 1);

-- Q.13
select product_id,product_name,category,price from products
where product_id not in (select product_id from orders 
group by product_id having count(customer_id) >= 1);
 
-- Q.14
select emp_name,salary from employees where salary in
( select salary from employees where department='Finance')
order by salary desc;

-- Q.15
select emp_name,department,salary from employees
where salary < (select min(salary) from employees
where department='Finance') 
order by salary desc;

-- Q.16
select dept_name,budget,location from departments 
where budget = (select max(budget) from departments);

-- Q.17
select customer_id,customer_name,city from customers
where customer_id = (select customer_id from orders 
group by customer_id 
having count(customer_id)=1);

-- Q.18
select customer_id,customer_name,city from customers
where customer_id in (select customer_id from orders 
group by customer_id 
having count(customer_id)>=2);

-- Q.19
select product_name,category,price from products
where price > (select max(price) from products where category='Accessories')
order by price desc;

-- Q.20
select order_id,customer_id,amount,order_date from orders
where customer_id in (select customer_id from customers 
where join_year=2021);

-- Q.21
select emp_id,emp_name,department from employees as e
where exists (select 1 from employees m where m.manager_id=e.emp_id);

-- Q.22
select emp_id,emp_name,department from employees as e
where not exists (select 1 from employees m where m.manager_id=e.emp_id);

-- Q.23
select customer_id,customer_name,city from customers as c
where exists (select customer_id from orders as o
where c.customer_id=o.customer_id);

-- Q.24
select customer_id,customer_name,city from customers as c
where not exists (select 1 from orders as o
 where  c.customer_id=o.customer_id);
 
 -- Q.25
 select product_id,product_name,category from products as p
 where exists (select 1 from orders as o where  p.product_id=o.product_id);
 
 -- Q.26
 select emp_name,department,salary from employees
 where department = (select department from employees where emp_id=105)
 and emp_id!=105 
 order by salary desc;
 
 -- Q.27
 select order_id,customer_id,amount,order_date from orders 
 where order_date = (select max(order_date) from orders);
 
 -- Q.28
 select order_id,customer_id,amount,order_date from orders
 where order_date = (select min(order_date) from orders);
 
 -- Q.29
 select emp_name,department,salary from employees where salary >all
( select salary from employees where department='HR')
order by salary desc;

-- Q.30
select * from orders where amount>(select avg(amount) from orders 
where status='Delivered') and status='Delivered'
order by amount desc;

