-- DDL => DATA DEFINATION LANGUAGE (CREATE)

create database const_db;
use const_db;
create table if not exists test1 ( id int, age int );

-- DML => DATA MANIPULATION LANGUAGE ( INSERT)
insert into test1 values(101,32),(102,null);    
select * from test1;

create table if not exists test2 (id int, age int not null);
insert into test2 values(101,32);
select * from test2;
insert into test2 values(102, null);    -- invalid data entry

create table if not exists test3 (id int unique, age int not null);
insert into test3 values(101,32);
select * from test3;
insert into test3 values(101, 32);       -- invalid data entry
insert into test3 values(null, 40);

create table if not exists test4 (id int , age int );
insert into test4(age) values(32);
select * from test4;

create table if not exists test5 (id int default 100 , age int);
insert into test6 values(80,23);
insert into test6 values(80,27);
select * from test6;

create table if not exists test8 (id int , age int, salary int , primary key(id,age));
insert into test8 values(1,50,500000),
(2,40,20000),
(1,51,600000),
(3,50,100);
select * from test8;
desc test8;

create table if not exists test9 (id int, age int check (age>18));
insert into test9 values (1,50);
insert into test9 values(1,10); -- give me error
select * from test9;

create table if not exists test11 (id int , age int check( age between 18 and 22));
insert into test10 values(1,20);
insert into test10 values(2,27);
select * from test10;

 create table student( id int, name varchar(20), cname varchar(20));
 insert into student values (1,"naina",'10'),(2,'abhi','12');
 
 create table class(cname varchar(20) primary key ); 
 insert into class values(10),(8),(90);
 
 select * from class;
 
 
 -- parent table
 create table s_class(cname varchar(20) primary key);
 insert into s_class values(10),(8),(9);
 
 -- child table
 create table students(id int, name varchar(20), cname varchar(20),
 foreign key (cname) references s_class(cname));
 insert into students values (1,'naina','10');
 insert into students values(2,'abhi','12'); -- will give me error
 
 
 -- assignment => data type 
