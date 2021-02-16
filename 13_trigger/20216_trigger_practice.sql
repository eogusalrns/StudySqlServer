use sqlDB;
go

create or alter trigger trg_backupUsertbl
on userTBL
--with encryption
after update,delete
as
	declare @modType nchar(2)

	if (COLUMNS_UPDATED() > 0)
		set @modType = '수정'
	else
		set @modType = '삭제'

	insert into backup_userTBL
		SELECT [userID],[username],[birthYear],[addr]
			  ,[mobile1],[mobile2],[height],[mDate]
			  ,@modType,getdate(),user_name()
		FROM deleted
GO


		--select userId,name,birthYear,addr,mobile1,mobile2,
		--	   height,mDate,@modType,getdate(),USER_NAME()