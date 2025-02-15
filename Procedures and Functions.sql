create database SPF;
use SPF;

create table emp (
ID int,
Name varchar(50),
Position varchar(50),
Salary decimal(10,2),
Contact varchar(10)
);
-- CREATING A PROCEDURE 

DELIMITER $$
create procedure emp(
in ID int,
in Name varchar(50),
in Position varchar(50),
in Salary decimal(10,2),
in Contact varchar(10)
)
begin 
insert into emp (ID,Name,Position,Salary,Contact)
values (ID,Name,Position,Salary,Contact);
end$$
DELIMITER ;

call emp(101,"Fareesa","HR",10000,7890123456);
call emp(102,"Hibah","Manager",20000,9087654321);
call emp(103,"Ayesha","Admin",30000,9603916523);
call emp(104,"Rida","Technical",40000,7890654321);

select * from emp;


-- SET AN OUTPUT MESSAGE

DELIMITER $$
create procedure emp1(
in ID int,
in Name varchar(50),
in Position varchar(50),
in Salary decimal(10,2),
in Contact varchar(10),
out showresult varchar(50)
)
begin 
insert into emp (ID,Name,Position,Salary,Contact)
values (ID,Name,Position,Salary,Contact);
set showresult = "Details added successfully!";
end$$
DELIMITER ;

set @showresult = '';

call emp1(11,"A","HR",10000,9345678901,@showresult);
call emp1(12,"B","Manager",20000,7654908321,@showresult);
call emp1(13,"C","Admin",30000,9165960323,@showresult);
call emp1(14,"D","Technical",40000,9065478321,@showresult);

select @showresult as Message;

select * from emp;


-- APPLYING CONDITIONAL STATEMENTS

DELIMITER $$
create procedure emp2(
in ID int,
in Name varchar(50),
in Position varchar(50),
in Salary decimal(10,2),
in Contact varchar(10),
out statusmessage varchar(50)
)
begin 
insert into emp (ID,Name,Position,Salary,Contact)
values (ID,Name,Position,Salary,Contact);

if Salary>5000 then
set statusmessage = "High Salary";
else
set statusmessage = "Low Salary";
end if ;
end$$
DELIMITER ;

set @statusmessage = "Salary";

call emp2 (1,"Varun","Finance",7000,8097654321,@statusmessage);
call emp2 (2,"Divakar","HR",2000,9087654321,@statusmessage);

select @statusmessage as Message;

select * from emp;


-- APPLYING CASE

DELIMITER $$
create procedure emp3 (
in ID int,
in Name varchar(50),
in Position varchar(50),
in Salary decimal(10,2),
in Contact varchar(10),
out statusmessage varchar(50)

)
begin 
insert into emp (ID,Name,Position,Salary,Contact)
values (ID,Name,Position,Salary,Contact);

case 
when Salary>10000 then set statusmessage = "Very High Salary";
when Salary between 5001 and 10000 then set statusmessage = "High Salary";
when Salary between 2001 and 5000 then set statusmessage = "Average Salary";
else 
set statusmessage = "Get a proper job!";
end case;
end$$
DELIMITER ;

set @statusmessage = "Salary";

call emp3 (1,"E","Technical",11000,7654809321,@statusmessage);
call emp3 (2,"F","Admin",3000,7659084321,@statusmessage);
call emp3 (3,"G","Admin",1050,8047659321,@statusmessage);
call emp3 (4,"H","HR",9000,9087654321,@statusmessage);

select @statusmessage as Message;

select * from emp;

-- APPLYING IF-ELSE WITH BETWEEEN AND

DELIMITER $$
create procedure emp4(
in ID int,
in Name varchar(50),
in Position varchar(50),
in Salary decimal(10,2),
in Contact varchar(10),
out statusmessage varchar(50)
)
begin 
insert into emp (ID,Name,Position,Salary,Contact)
values (ID,Name,Position,Salary,Contact);

if Salary >10000 then set statusmessage = "Very High Salary";
elseif Salary between 5001 and 10000 then set statusmessage = "High Salary";
elseif Salary between 2001 and 5000 then set statusmessage = "Average Salary";
else 
set statusmessage = "Get a proper job!";
end if;
end$$
DELIMITER ;

call emp4 (5,"I","Technical",11000,7654809321,@statusmessage);
call emp4 (6,"J","Admin",3000,7659084321,@statusmessage);
call emp4 (7,"K","Admin",1050,8047659321,@statusmessage);
call emp4 (8,"L","HR",9000,9087654321,@statusmessage);

select @statusmessage as Message;

select * from emp;


