create database views;
use views;

create table employee (
ID int primary key,
Name varchar(50),
Dep_ID int,
Salary decimal(10,2),
foreign key (Dep_ID) references Department(Dep_ID)
);

create table Department (
Dep_ID int primary key,
Dep_name varchar(50)
);

insert into Department(Dep_ID,Dep_name)
values (11,"HR"),
(12,"Finance"),
(13,"Admin"),
(14,"Technical");

insert into Department(Dep_ID,Dep_name)
values (16,"Finance"),
(17,"Admin"),
(18,"Sales"),
(19,"Technical");


insert into employee(ID,Name,Dep_ID,Salary)
values (101,"Fareesa",11,100000),
(102,"Hibah",12,97000),
(103,"Ayesha",13,105000),
(104,"Rida",14,109000),
(105,"A",15,40000);

insert into employee(ID,Name,Dep_ID,Salary)
values (106,"B",16,45000),
(107,"C",17,55000),
(108,"D",18,60000),
(109,"E",19,70000);

create view EmpDep as 
select e.ID, e.name, d.Dep_name, e.Salary
from employee e
join Department d on e.Dep_ID = d.Dep_ID;

select * from EmpDep;  

select * from EmpDep
where salary>60000;  

create view Depdetails as
select d.Dep_name,
count(e.ID) as Total_emp,
sum(e.Salary) as Total_salary,
avg(e.Salary) as Avg_salary
from Employee e
join Department d on e.Dep_ID = d.Dep_ID
group by d.Dep_name;

select * from Depdetails;  

create view EmpSalary as 
select ID, Name, Salary,
case when Salary>60000 then "High"
when Salary<60000 then "Low" else "Get a proper job!"
end as Salaries
from Employee;

select * from EmpSalary;



