--testTBL insert
use sqlDB;
go

--DML �� SELECT
select * from testTBL1;

--DML �� INSERT
insert into testTBL1 values (1,'ȫ�浿',25);
insert into testTBL1 (id,username) values (2,'�����');
insert into testTBL1 (id,username) values (3,'ȫ���');
insert into testTBL1 (age,id) values (30,4);

insert into testTBL1 values ('���ð�',44);

exec sp_help 'testTBL1';

select IDENT_CURRENT('testTBL1');

select @@IDENTITY;

use tempdb;
create table testTBL2
(	id int identity,
	username nchar(3),
	age int,
	nation nchar(4) default '���ѹα�');
Go
insert into testTBL2 values('����',25,default);

select * from BikeStores.sales.order_items;

select * from ShopDB.dbo.memberTBL;

--sales.order_items ���̺� ����
CREATE TABLE [sales_order_items](
	[order_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[list_price] [decimal](10, 2) NOT NULL,
	[discount] [decimal](4, 2) NOT NULL);

insert into sales_order_items
select * from BikeStores.sales.order_items;

select * from sales_order_items;
--update
select * from testTBL1;
update testTBL1
   set username = 'ȫ�浿����',
	   age = 300
 where username = 'ȫ�浿';
 select * from testTBL1;

 delete from testTBL1
  where age=30;
  select * from testTBL1;