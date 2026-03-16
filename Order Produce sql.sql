create database orderprod
use orderprod

CREATE TABLE CUSTOMER(
custid int,
cname char(15) not null,
city varchar(30),
primary key(custid)
)
insert into CUSTOMER values(111,'Preksha','Udupi');
insert into CUSTOMER values(112,'Prasoon','UP');
insert into CUSTOMER values(113,'Pravith','Karkala');
insert into CUSTOMER values(114,'Rakshitha','Blore');
insert into CUSTOMER values(115,'Sameeksha','Manipal');

CREATE TABLE C_ORDER(
orderid int,
odate date,
custid int,
ordamt int,
primary key(orderid),
foreign key(custid) references CUSTOMER(custid) on delete cascade on update cascade
)
insert into C_ORDER values (1001,'2025-07-08',111,1000);
insert into C_ORDER values (1002,'2026-09-07',112,1200);
insert into C_ORDER values (1003,'2025-05-08',113,1234);
insert into C_ORDER values (1004,'2025-07-05',114,1060);
insert into C_ORDER values (1005,'2025-12-02',115,2000);

CREATE TABLE ITEM(
itemid int,
price int,
primary key(itemid)
)
insert into ITEM values(1,400);
insert into ITEM values(2,410);
insert into ITEM values(3,420);
insert into ITEM values(4,430);
insert into ITEM values(5,450);

CREATE TABLE ORDER_ITEM(
orderid int,
itemid int,
qty int,
primary key(orderid,itemid),
foreign key(orderid) references C_ORDER(orderid) on delete cascade on update cascade,
foreign key(itemid) references ITEM(itemid) on delete cascade on update cascade
)
insert into ORDER_ITEM values(1001,1,2);
insert into ORDER_ITEM values(1002,2,1);
insert into ORDER_ITEM values(1003,3,3);
insert into ORDER_ITEM values(1004,4,7);
insert into ORDER_ITEM values(1005,5,6);

CREATE TABLE WAREHOUSE(
warehouseid int,
city varchar(20) not null,
primary key(warehouseid)
)
insert into WAREHOUSE values(201,'Mlore');
insert into WAREHOUSE values(202,'Blore');
insert into WAREHOUSE values(203,'Manipal');
insert into WAREHOUSE values(204,'UK');
insert into WAREHOUSE values(205,'USA');

CREATE TABLE SHIPMENT(
orderid int,
warehouseid int,
ship_dt date,
primary key(orderid,warehouseid),
foreign key(orderid) references C_ORDER(orderid) on delete cascade on update cascade,
foreign key(warehouseid) references WAREHOUSE(warehouseid) on delete cascade on update cascade
)
insert into SHIPMENT values(1001,201,'2026-09-07');
insert into SHIPMENT values(1002,202,'2026-01-07');
insert into SHIPMENT values(1003,203,'2026-12-09');
insert into SHIPMENT values(1004,204,'2025-08-05');
insert into SHIPMENT values(1005,205,'2026-12-15');

select * from CUSTOMER
select * from C_ORDER
select * from ITEM
select * from ORDER_ITEM
select * from WAREHOUSE
select * from SHIPMENT

Select c.name, count(o.odrid