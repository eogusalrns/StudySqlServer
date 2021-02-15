USE [sqlDB]
GO

	begin try
	begin tran;

	INSERT INTO [dbo].[userTBL]
			   ([userID]
			   ,[username]
			   ,[birthYear]
			   ,[addr]
			   ,[mobile1]
			   ,[mobile2]
			   ,[height]
			   ,[mDate])
		 VALUES
			   ('GJY'
			   ,'권지영'
			   ,1988
			   ,'서울'
			   ,'010'
			   ,'98989898'
			   ,175
			   ,GETDATE());
	--commit

	INSERT INTO [dbo].[buyTBL]
			   ([userID]
			   ,[prodName]
			   ,[groupName]
			   ,[price]
			   ,[amount])
		 VALUES
			   ('GJY'
			   ,'선글라스'
			   ,null
			   ,80000000
			   ,1);

	commit;
end try
begin catch
	rollback
end catch
--rollback
GO


