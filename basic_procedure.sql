-- stored procedure

create or replace PROCEDURE test59(x in int, y out int)

is 
BEGIN
    
    DBMS_OUTPUT.put_line('Hello user');
    dbms_output.put_line(x);
    -- x := 10; ( in perameter are read only parameter)
    y := x+40;
    dbms_output.put_line('aman');

end;


create table emp100 as select * from hr.employees;
select * from emp100;

create or replace function increase_salary(a int)  -- in type parameter
return INT
is 
begin 
    return a*10;
end;