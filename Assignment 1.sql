use sakila;
CREATE TABLE sale (
    OrderID INT PRIMARY KEY,
    CustomerID VARCHAR(10),
    Category VARCHAR(20),
    OrderDate DATE,
    OrderValue DECIMAL(10,2)
);
INSERT INTO sale (OrderID, CustomerID, Category, OrderDate, OrderValue) VALUES
(1001, 'C201', 'Electronics', '2024-01-05', 12500),
(1002, 'C203', 'Apparel', '2024-01-07', 3200),
(1003, 'C205', 'Home', '2024-01-10', 5800),
(1004, 'C201', 'Electronics', '2024-01-15', 8900),
(1005, 'C207', 'Apparel', '2024-01-18', 2100),
(1006, 'C210', 'Home', '2024-01-22', 4700),
(1007, 'C203', 'Electronics', '2024-02-01', 15300),
(1008, 'C212', 'Apparel', '2024-02-05', 1800),
(1009, 'C205', 'Home', '2024-02-08', 6200),
(1010, 'C214', 'Electronics', '2024-02-12', 9400),
(1011, 'C207', 'Apparel', '2024-02-17', 2900),
(1012, 'C210', 'Electronics', '2024-02-20', 11000),
(1013, 'C212', 'Home', '2024-03-01', 3500),
(1014, 'C201', 'Apparel', '2024-03-05', 4100),
(1015, 'C214', 'Home', '2024-03-10', 7800);

select * from  sale;

-- --------------- Level 1 -------------------------
-- Que 1.
select category,sum(ordervalue) from sale group by category;

-- Que 2. 
select category,count(category) from sale group by category;

-- Que 3.
select category, max(ordervalue) from sale group by category;

-- ------------------ Level 2 ----------------------------
-- Que 4. 
select category from sale group by category;

-- Que 5.
select customerid from sale group by customerid;

-- Que 6. 
select distinct customerid,category from sale;

-- -------------- Level 3 ---------------------
-- Que 7.
select customerid,category,sum(ordervalue)as totalsales from sale group by customerid,category;

-- Que 8. 
select customerid,category,count(customerid) from sale group by customerid,category;

-- Que 9.
select category,month(orderdate) from sale group by category;
-- Level 4
-- Que 1. 
select category,sum(ordervalue) from sale group by category having sum(ordervalue)>20000 ;

-- Que 2. 
select customerid,count(customerid) from sale group by customerid having count(customerid)>1;

-- Que 3. 
select customerid,category,sum(ordervalue) as m from sale group by customerid,category
having m>10000;

-- Level 5
-- Que 1. 
select category,count(category),sum(ordervalue),avg(ordervalue) from sale 
group by category having avg(ordervalue)>5000;

-- Que 2. 
select customerid,count(customerid),avg(ordervalue) from sale group by customerid 
having avg(ordervalue)>6000 and count(category)>1;

-- Que 3.
select category,sum(ordervalue),count(category),avg(ordervalue),month(orderdate)
from sale group by category,month(orderdate) having count(category)>=2;


select * from sale;
use sakila;