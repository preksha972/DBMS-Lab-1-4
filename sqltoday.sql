create database prog2copy
use prog2copy
create table SHOPLAB(
Shopno int,
ShopID varchar(20),
ShopPrice decimal(6,2),
ShopStrt Date
) 
insert into SHOPLAB values(1,'SPAR',45.6,'2000-01-06');
insert into SHOPLAB values(2,'DMart',250.3,'2012-01-06');
insert into SHOPLAB values(3,'Lulu',370.3436,'2015-01-06');
insert into SHOPLAB values(4,'Nesto',4500.678,'1986-01-06');
insert into SHOPLAB values(5,'Carrefour',2500,'1999-01-06');
select * from SHOPLAB