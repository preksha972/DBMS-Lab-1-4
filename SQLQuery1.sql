create database IPLwin
use IPLwin

create TABLE IPLTeam1(
Teamname varchar(10),
townername varchar(15),
)

insert into IPLTeam1 values('RCB','Mallya');
insert into IPLTeam1 values('Punjab','Preity');
insert into IPLTeam1 values('MI','ambani');

select * from IPLTeam1

create TABLE PlayerDts(
Teamname varchar(10),
Playname varchar(15),
Playage varchar(2),
Playrank varchar(2),
)

insert into PlayerDts values('RCB','Virat','36',5);
insert into PlayerDts values('CSK','Dhoni','40',6);
insert into PlayerDts values('RR','Rishabh','26',7);
insert into PlayerDts values('DC','KL Rahul','25',9);
insert into PlayerDts values('KKR','Hardik','24',10);
insert into PlayerDts values('MI','Rohit','23',1);

select * from PlayerDts

