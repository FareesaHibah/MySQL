create database DCL;
use DCL;

create table std (
ID int auto_increment primary key,
F_name varchar(50),
L_name varchar(50),
Roll_no int);

insert into std (F_name,L_name,Roll_no)
values ("Fareesa","Hibah",11),
("Ayesha","Rida",12),
("Fouzia","Begum",13),
("Ghousia","Begum",14);

create database DCL_lib;
use DCL_lib;
create table Books(
B_ID int primary key auto_increment,
Title varchar(100),
Author varchar (100),
Price int,
Year int);

insert into Books(Title,Author,Price,Year)
values ("Wings of Fire","APJ Abdul Kalam",1970,1500),
("Ignited Minds","APJ Abdul Kalam",2005,3000),
("Rich Dad Poor Dad","Robert Kwosky",2002,999),
("Atomic Habits","James Clear",1998,500);

create user "librarian@localhost" identified by "1234";
create user "student@localhost" identified by "1234";
