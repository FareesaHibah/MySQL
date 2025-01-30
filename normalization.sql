create database normalization;
use normalization;


create table students(
STD_ID int,
Name varchar(10),
Course_ID int,
Course_name varchar(50),
Instructor_ID int,
Instructor_name varchar(50)
);

insert into students(STD_ID,Name,Course_ID,Course_name,Instructor_ID,Instructor_name)
values(1,"Fareesa",101,"AIPA",201,"Shailesh"),
(2,"Hibah",102,"CSA",202,"Arkan"),
(3,"Ayesha",103,"CHNM",203,"Fouzia"),
(4,"Rida",104,"AI",204,"Ghousia");


create table Student1(
Student_ID int,
Student_name varchar(10)
);

insert into Student1(Student_ID, Student_name)
values (1,"Fareesa"),
(2,"Hibah"),
(3,"Ayesha"),
(4,"Rida");

select * from Student1;


create table Course(
Course_ID int primary key,
Course_name varchar(100),
Instructor_ID int);

insert into Course(Course_ID,Course_name,Instructor_ID)
values (101,"AIPA",201),
(102,"CSA",202),
(103,"CHNM",203),
(104,"AI",204);



-- BCNF
create table Students2(
Student_ID int primary key,
Student_name varchar(50)
);

insert into Students2(Student_ID,Student_name)
values (1,"Fareesa"),
(2,"Hibah"),
(3,"Ayesha"),
(4,"Rida");

create table Instructors(
Instructor_ID int primary key,
Instructor_name varchar(50)
);

insert into Instructors(Instructor_ID,Instructor_name)
values (201,"Shailesh"),
(202,"Arkan"),
(203,"Fouzia"),
(204,"Ghousia");

create table Courses(
Course_ID int primary key,
Course_name varchar(50),
Instructor_ID int,
foreign key (Instructor_ID) references Instructors(Instructor_ID)
);

insert into Courses(Course_ID,Course_name,Instructor_ID)
values (101,"AIPA",201),
(102,"CSA",202),
(103,"CHNM",203),
(104,"AI",204);

-- CREATING A RELATUON BETWEEN STUDENT_ID AND COURSE_ID

create table Admission1(
Student_ID int,
Course_ID int,
primary key (Student_ID,Course_ID),
foreign key (Student_ID) references Students2(Student_ID),
foreign key (Course_ID) references Courses(Course_ID)
);

insert into Admission1 (Student_ID,Course_ID)
values (1,101),
(2,102),
(3,103),
(4,104);


