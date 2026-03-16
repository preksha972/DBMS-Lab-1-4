create database Sdt

use Sdt

create TABLE Personal(
USN varchar(10),
Age int,
sdtname varchar(16),
sdtaddress varchar(20),
)

create TABLE Marks(
USN varchar(10),
marks1 int,
marks2 int,
marks3 int,
)

insert into Personal values('cs341',19,'Preksha','Mlore');
insert into Personal values('cs340',19,'Pravith','Karkala');
insert into Personal values('cs342',19,'Rakshitha','Blore');
insert into Personal values('cs339',19,'Prasoon','UP');
insert into Personal values('cs346',19,'Sameeksha','Udupi');
insert into Personal values('cs303',19,'Ananya','Dubai');



insert into Marks values('cs341',23,24,25);
insert into Marks values('cs340',25,26,27);
insert into Marks values('cs342',22,24,26);
insert into Marks values('cs339',21,23,25);
insert into Marks values('cs346',27,29,31);
insert into Marks values('cs303',42,46,48);


select * from Personal
select * from Marks
