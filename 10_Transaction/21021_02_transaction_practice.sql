use tempdb;
--create table bankBook(
--	uName nvarchar(10),
--	uMoney INT,
--	Constraint CK_money
--	CHECK (uMoney>=0)
--);
Go
--Insert into bankBook values ('������',1000);
--Insert into bankBook values ('�Ǹ���',0);

Update bankBook set uMoney = uMoney-500 where uName='������';
Update bankBook set uMoney = uMoney+500 where uName='�Ǹ���';

Update bankBook set uMoney = uMoney-1000 where uName='������';
Update bankBook set uMoney = uMoney+1000 where uName='�Ǹ���';

begin try
	begin tran
		Update bankBook set uMoney = uMoney-600 where uName='������';
		Update bankBook set uMoney = uMoney+600 where uName='�Ǹ���';
	commit tran
end try
begin catch
	rollback
end catch
select * from bankBook;

