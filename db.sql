-- Indexing in Database

create database Indexing;
use Indexing;
create table DB(
Emp_ID int auto_increment primary key,
Name varchar(100),
Dep_ID int,
Joining date,
Salary int
);

insert into DB(Emp_ID,Name,Dep_ID,Joining,Salary)
values ("Ramesh",101,"2024-09-07",50000),
("Daya",102,"2024-05-01",60000),
("Koushik",101,"2024-04-17",55000),
("Ankit",104,"2024-05-13",65000),
("Varun",101,"2024-09-07",50000),
("Sampath",102,"2024-05-01",60000),
("Aadil",101,"2024-04-17",55000),
("Deepak",104,"2024-05-13",65000),
("Sakshi",101,"2024-09-07",50000),
("Fareesa",102,"2024-05-01",60000),
("Afshan",101,"2024-04-17",55000),
("Sadvika",104,"2024-05-13",65000);

create index ind_emp on DB(Joining);

show indexes from DB;

-- multi-column index
create index emp_Salary_Date on DB(Salary,Joining);

select * from DB
where Salary>50000 and Joining>24-01-01;

-- clustered index fro range of data

select Emp_ID,Name,Dep_ID,Joining,Salary
from DB
where Joining>"2024-01-01"
order by Joining;

