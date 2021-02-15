create or alter procedure usp_return
	@username nvarchar(10)
as
	declare @userID char(8);
	select @userID = userID
	  from userTBL
	 where username = @username;

	 if (@userID <> '') return 1;
	 else return 0;
go

declare @retVal int;
exec @retVal = usp_return 'ÀºÀÚ¿ø';
print @retVal;