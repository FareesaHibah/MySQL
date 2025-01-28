use fareesa;
use Employees;

insert into Employees (ID,Name,Salary,Address,Phone,Pincode) values (1,"Fareesa",700000,"Bagh-E-JahanAra,Chanchalguda,Hyderabad",9603916523,500023); 

alter table Employees modify column Phone real;

-- delete from Employees where id=1;

insert into Employees (ID,Name,Salary,Address,Phone,Pincode) values (1,"Fareesa",700000,"Bagh-E-JahanAra,Chanchalguda,Hyderabad",9603916523,500023), 
(2,"Hibah",1400000,"Dilsukhnagar,Hyderabad",8987402765,500034),
(3,"Ayesha",70000,"Saidabad,Hyderabad",8008758678,500080),
(4,"Rida",89000,"Secundrabad",7456027865,500004),
(5,"Fouzia",175000,"Rajendranagar",9764561230,500123), 
(6,"Begum",100000,"Mehdippatnam,Hyderabad",9606341290,500087),
(7,"Fareesa",700000,"Lakdi ka Pul,Hyderabad",9645677523,500032);  
 select*from employees;
  
UPDATE employees
SET Phone = 1234567890
WHERE id=3;



alter table Employees add column Images longblob;

alter table Employees
add column date DATE,
add column DateTime DATETIME,
add column Timestmp timestamp,
add column Time Time,
add column Year Year;

insert into Employees (Date,DateTime,Timestmp,Time,Year)
values ("2025-02-28","2025-01-28 12:10:30",current_timestamp,"12:10:45","2025");



show variables like 'secure_file_priv';

insert into Employees(Images) Values(load_file('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/ZIYAN.jpg'));
alter table Employees modify column Images longblob;

create table xyz(
Department varchar(50),
Name varchar(50),
Salary int);

insert into xyz (Department,Name,Salary)
values ("MTS","Fareesa",123456),
("Principal","Hibah",7869097),
("Training Officer","Ayesha",450000),
("Director","Rida",237000),
("Employee","Begum",70000),
("CEO","Fouzia",12000000);

select count(*) as Total_data from xyz;

select sum(Salary) as Total_Salary from xyz;

select avg(Salary) as Total_salary from xyz;

select max(Salary) as Maximum_Salary from xyz;

select min(Salary) as Minimum_Salary from xyz;

select name, Salary, Department from xyz where Salary=(select min(Salary) as Mininum_Salary from xyz);

select count(name) as Training_Officer from xyz where Department="Training Officer";

select Department , Max(Salary) as max_Salary from xyz group by Department;

select Department , Min(Salary) as min_Salary from xyz group by Department;

select Department , count(Name) as Total_No from xyz group by Department;

select Department , name , Sum(Salary) as Total_Salary from xyz group by Department , Name;

select Department , avg(Salary) as Average_Salary from xyz group by Department having avg(Salary)>600000;

