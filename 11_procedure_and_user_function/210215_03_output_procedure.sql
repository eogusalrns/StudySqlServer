create or alter procedure usp_ifelse
	@username nvarchar(10)
as
	declare @birthYear int;
	select @birthYear = birthYear 
	  from userTBL
	 where username = @username;

	 if (@birthYear >= 1980)
		print(concat( '아직 젊다.',@birthYear));
	 else
		print '이젠 아니야.'
go

exec usp_ifelse '이승기';