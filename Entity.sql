create database fareesa; 
use fareesa;
create table Employees (
ID int,
Name varchar(100),
Salary float(10),
Address varchar(100),
Phone int,
Pincode int
);
select * from employees;




-- ENTITY DIAGRAMS

create database entity;
use entity;

create table Students(
REG_ID int primary key,
Name varchar(20),
Address varchar(30),
Contact varchar(10)
);

create table Courses(
Course_ID int primary key,
Name varchar(50),
Duration varchar(20),
foreign key (Course_ID) references Students(REG_ID)
);

create table Teachers(
Employee_ID int primary key, 
Name varchar(20),
Address varchar(30),
Qualification varchar(50),
Contact varchar(10),
foreign key (Employee_ID) references Courses(Course_ID)
);


insert into Students(REG_ID,Name,Address,Contact)
values (1,"Fareesa","Chanchalguda",8008758678),
(2,"Hibah","Bagh-E-JahanAra",9876014290),
(3,"Ayesha","Saidabad",9087623409),
(4,"Rida","Malakpet",8760570912);

insert into Courses(Course_id,Name,Duration)
values (1,"Artificial Intelligence and Programming Assistant","11 months"),
(2,"Computer Software Application","9 months"),
(3,"Drone Technician","9 months"),
(4,"Computer Hardware and Networking Maintainence","9 months");

insert into Teachers(Employee_ID,Name,Address,Qualification,Contact)
values (1,"Fouzia","Bandlaguda","Bachelor in Education",9603916523),
(2,"Begum","Mehdipatnam","Masters in Education",9089567843),
(3,"Ghousia","Rajendranagar","Ph.D",9177775686),
(4,"Begum","Lakdi-ka-Pul","Toxicology",845609812);


select * from Students;

select s.REG_ID,s.Name,s.Address,s.Contact





