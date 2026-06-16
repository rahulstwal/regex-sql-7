-- -- declare
-- --     v_emp  hr.employees%rowtype

-- -- begin
-- --     select * info v_emp from hr.employees where employee_id=101;

-- --         dbms_output.put_line(v.emp);
-- -- end;


-- DECLARE
--     X INT := 9;
-- BEGIN
--     DBMS_OUTPUT.PUT_LINE('Hello Hi Good morning');
--     DBMS_OUTPUT.PUT_LINE('Night ho chuki h so jao');
--     DBMS_OUTPUT.PUT_LINE(X);
-- END;

-- DECLARE
--     X INT := 50;
-- BEGIN
--     DBMS_OUTPUT.PUT_LINE('here childrens count is ' || X);
--     IF X > 49 THEN
--         DBMS_OUTPUT.PUT_LINE('O shit x is greater than 49');
--     END IF;
-- END;

-- DECLARE
--     X INT := 1;
-- BEGIN
--     DBMS_OUTPUT.PUT_LINE('here childrens count is ' || X);
--     WHILE X < 5 LOOP
--         DBMS_OUTPUT.PUT_LINE('now childrens are ' || X);
--         X := X + 1;
--     END LOOP;

-- END;

-- BEGIN
--     FOR I IN 1..5 LOOP
--         DBMS_OUTPUT.PUT_LINE('now childrens are :) ' || I);
--     END LOOP;

--     FOR I IN REVERSE 1..5 LOOP
--         DBMS_OUTPUT.PUT_LINE('now childrens are :( ' || I);
--     END LOOP;
--   []
-- END;

-- DECLARE
--     X VARCHAR(30);
-- BEGIN
--     SELECT
--         FIRST_NAME
--     INTO X
--     FROM
--         HR.EMPLOYEES
--     WHERE
--         EMPLOYEE_ID = 200;

--     DBMS_OUTPUT.PUT_LINE('Welcome Our Friend ' || X);
-- END;

-- DECLARE
--     FNAME VARCHAR(30);
--     LNAME VARCHAR(40);
--     MAIL  HR.EMPLOYEES.EMAIL%TYPE;
-- BEGIN
--     SELECT
--         FIRST_NAME,
--         LAST_NAME,
--         EMAIL
--     INTO
--         FNAME,
--         LNAME,
--         MAIL
--     FROM
--         HR.EMPLOYEES
--     WHERE
--         EMPLOYEE_ID = 150;

--     DBMS_OUTPUT.PUT_LINE('First Name: ' || FNAME);
--     DBMS_OUTPUT.PUT_LINE('Last Name: ' || LNAME);
--     DBMS_OUTPUT.PUT_LINE('Email: ' || MAIL);
-- END;


-- -- Learning Assignment -> Percentage row type, record data type
-- -- > what is cursor ? why we use it ? 
-- -- > implicit vs explicit cursor

-- SELECT
--     EMPLOYEE_ID,
--     FIRST_NAME,
--     LAST_NAME,
--     EMAIL,
--     PHONE_NUMBER,
--     HIRE_DATE,
--     JOB_ID,
--     SALARY,
--     COMMISSION_PCT,
--     MANAGER_ID,
--     DEPARTMENT_ID
-- FROM
--     HR.EMPLOYEES;



-- %row type 

-- declare 
--        v_emp hr.employees%rowtype;

-- begin
--    select * into v_emp from hr.employees where employee_id=101;

--          dbms_output.put_line(v_emp.email);

-- end;

-- create table raj45
-- as select * from hr.employeess;


-- select * from raj45;


-- begin 

--       update raj45 set first_name = 'aman'
--       where first_name = 'Neena';

--       dbms_output.put_line(SQL%rowcount);

-- end;
-- explitsive 


 SELECT
    EMPLOYEE_ID,
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    PHONE_NUMBER,
    HIRE_DATE,
    JOB_ID,
    SALARY,
    COMMISSION_PCT,
    MANAGER_ID,
    DEPARTMENT_ID
FROM
    HR.EMPLOYEES;
-- -- implitsive cursor 
-- create table raj45
-- as select * from hr.employeess;


-- select * from raj45;

-- begin 

--       update raj45 set first_name = 'aman'
--       where first_name = 'Neena';

--       dbms_output.put_line(SQL%rowcount);

-- end;


-- -- explitsive cursor 

CREATE TABLE raj47 AS
SELECT employee_id, first_name, email
FROM hr.employees
WHERE employee_id BETWEEN 101 AND 105;
SELECT * FROM raj47;

DECLARE 
    CURSOR raj_cursor IS -- declaration 
    SELECT * FROM raj47;

    raj_rec raj47%ROWTYPE;-- variable that hold multiple column and its datatype 
BEGIN 
    OPEN raj_cursor; -- we started cursor / open cursor
    
    if(raj_cursor%isopen) then 
        dbms_output.put_line('cursor open');
    end if ;

   FETCH raj_cursor INTO raj_rec; -- fetching data from cursor and store it into raj_rec (record datatype)

    CLOSE raj_cursor; -- we done with cursor so close it

END;
select * from raj47;



DECLARE 
    CURSOR raj_cursor IS -- declaration 
    SELECT * FROM raj47;

    raj_rec raj47%ROWTYPE;-- variable that hold multiple column and its datatype 
BEGIN 
    OPEN raj_cursor; -- we started cursor / open cursor
    FETCH raj_cursor INTO raj_rec;
    while(raj_cursor%found) loop
        dbms_output.put_line(raj_rec.first_name || ' '|| raj_rec.employee_id);
        FETCH raj_cursor INTO raj_rec;
        
    end loop ;
    

     -- fetching data from cursor and store it into raj_rec (record datatype)

    CLOSE raj_cursor; -- we done with cursor so close it

END;
