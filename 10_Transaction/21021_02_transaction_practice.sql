use tempdb;
--create table bankBook(
--	uName nvarchar(10),
--	uMoney INT,
--	Constraint CK_money
--	CHECK (uMoney>=0)
--);
Go
--Insert into bankBook values ('구매자',1000);
--Insert into bankBook values ('판매자',0);

Update bankBook set uMoney = uMoney-500 where uName='구매자';
Update bankBook set uMoney = uMoney+500 where uName='판매자';

Update bankBook set uMoney = uMoney-1000 where uName='구매자';
Update bankBook set uMoney = uMoney+1000 where uName='판매자';

begin try
	begin tran
		Update bankBook set uMoney = uMoney-600 where uName='구매자';
		Update bankBook set uMoney = uMoney+600 where uName='판매자';
	commit tran
end try
begin catch
	rollback
end catch
select * from bankBook;

