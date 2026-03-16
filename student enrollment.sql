create database st_enroll_lab3
use st_enroll_lab3

create table STUDENT(
regno varchar(10),
fname char(15),
major char(20),
bdate date,
primary key(regno)
)
insert into STUDENT values('S101', 'Alice', 'CS', '2002-03-15');
insert into STUDENT values('S102', 'Bob', 'IS', '2001-07-21');
insert into STUDENT values('S103', 'Carol', 'CC', '2002-11-05');
insert into STUDENT values('S104', 'David', 'EE', '2000-01-30');
insert into STUDENT values('S105', 'Eva', 'EC', '2001-09-12');
insert into STUDENT values('S106', 'Frank', 'AIDS', '2002-06-18');

create table COURSE(
course int,
cname varchar(15),
dept char(20),
primary key(course)
)
insert into COURSE values(101, 'DBMS', 'ComputerSci');
insert into COURSE values(102, 'Calculus', 'Mathematics');
insert into COURSE values(103, 'Mechanics', 'Physics');
insert into COURSE values(104, 'OrganicChem', 'Chemistry');
insert into COURSE values(105, 'Genetics', 'Biology');
insert into COURSE values(106, 'Probability', 'Statistics');

create table TEXTBOOK(
bookISBN int,
title varchar(50),
publisher varchar(20),
author char(20),
primary key(bookISBN)
)
insert into TEXTBOOK values(1001, 'Database System Concepts', 'McGrawHill', 'Korth');
insert into TEXTBOOK values(1002, 'Calculus Early Transcendentals', 'Cengage', 'Stewart');
insert into TEXTBOOK values(1003, 'Classical Mechanics', 'Pearson', 'Goldstein');
insert into TEXTBOOK values(1004, 'Organic Chemistry', 'Wiley', 'Smith');
insert into TEXTBOOK values(1005, 'Molecular Biology', 'Pearson', 'Watson');
insert into TEXTBOOK values(1006, 'Introduction to Probability', 'Springer', 'Ross');

create table BOOK_ADOPTION(
course int,
sem int,
bookISBN int,
primary key(course,sem,bookISBN),
foreign key(course) references COURSE(course) on delete cascade on update cascade,
foreign key(bookISBN) references TEXTBOOK(bookISBN) on delete cascade on update cascade
)
insert into BOOK_ADOPTION values(101, 1, 1001);   
insert into BOOK_ADOPTION values(102, 1, 1002);   
insert into BOOK_ADOPTION values(103, 2, 1003);  
insert into BOOK_ADOPTION values(104, 2, 1004);   
insert into BOOK_ADOPTION values(105, 3, 1005); 
insert into BOOK_ADOPTION values(106, 3, 1006);   

create table ENROLL(
regno varchar(10),
course int,
sem int,
marks int,
primary key(regno,course,sem),
foreign key(regno) references STUDENT(regno) on delete cascade on update cascade,
foreign key(course) references COURSE(course) on delete cascade on update cascade
)
insert into ENROLL values('S101', 101, 1, 85);
insert into ENROLL values('S102', 101, 1, 88);
insert into ENROLL values('S103', 103, 2, 75);
insert into ENROLL values('S104', 102, 1, 69);
insert into ENROLL values('S105', 105, 3, 89);
insert into ENROLL values('S106', 101, 1, 80);

select * from STUDENT
select * from COURSE
select * from TEXTBOOK
select * from BOOK_ADOPTION
select * from ENROLL