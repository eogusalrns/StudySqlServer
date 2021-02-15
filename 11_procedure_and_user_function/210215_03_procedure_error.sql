create or alter procedure usp_errorr
	@userID char(8),
	@userName nvarchar(10),
	@birthYear int = 1900,
	@addr nchar(2) = '����',
	@mobile1 char(3) = null,
	@mobile2 char(8) = null,
	@height smallint = 170,
	@mDate date = '2021-02-15'
as
	declare @err int;
	begin try
		begin tran
			INSERT INTO userTBL VALUES
				   (@userID,@username,@birthYear,@addr
				   ,@mobile1,@mobile2,@height,@mDate);
		commit
	end try
	begin catch
		select @err = ERROR_NUMBER();
		rollback;
	end catch	
		if @err != 0
			print '###' + @userName + '��(��) INSERT�� �����߽��ϴ�';
		print @err;  --������ȣ ������
	GO
exec usp_errorr 'WDDT','������',1988,'�λ�','019','99990024',190,'2021-02-14';
