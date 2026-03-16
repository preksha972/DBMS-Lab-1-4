create database mkmt
use mkmt

create table DTS(
username char(20),
useraadhar int,
userage int,
notravel int,
)

create table FLIGHTS(
Notravel int,
Fromplace varchar(20),
Toplace varchar(20),
Depart Date,
Rtnda Date,
Oneway char(20),
Twoway char(20),
FareType char(20),
)
insert into DTS values('Preksha',12345,23,1);
insert into DTS values('Sameeksha',12346,32,4);
insert into DTS values('Soujanya',12345,43,3);

insert into FLIGHTS values(1,'DEL','BLR','2025-01-01','2025-01-01','No','Yes','Student');
insert into FLIGHTS values(4,'IXE','DEL','2025-01-01','2025-01-01','Yes','No','Adult');
insert into FLIGHTS values(3,'UP','BLR','2025-01-01','13-01-01','No','Yes','Adult');

select * from DTS
select * from FLIGHTS