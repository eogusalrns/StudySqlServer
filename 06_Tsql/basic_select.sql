/*
select memberID,memberName, memberAddress 
  from memberTBL
 where memberID like 'H%'
*/
use BikeStores;
select * from sales.customers;

select * from production.products;

-- DB��ȸ
exec sp_helpdb;
-- ���̺� ��ȸ
exec sp_tables @table_type = "'TABLE'";
-- ���̸� ��ȸ
exec sp_columns @table_name = 'stocks',
				@table_owner = 'production';