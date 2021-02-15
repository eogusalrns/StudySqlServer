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
			   ,'������'
			   ,1988
			   ,'����'
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
			   ,'���۶�'
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


