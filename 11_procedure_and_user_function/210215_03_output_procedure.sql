create or alter procedure usp_ifelse
	@username nvarchar(10)
as
	declare @birthYear int;
	select @birthYear = birthYear 
	  from userTBL
	 where username = @username;

	 if (@birthYear >= 1980)
		print(concat( '���� ����.',@birthYear));
	 else
		print '���� �ƴϾ�.'
go

exec usp_ifelse '�̽±�';