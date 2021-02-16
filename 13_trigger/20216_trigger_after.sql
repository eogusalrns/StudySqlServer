USE [sqlDB]
GO

/****** Object:  Trigger [dbo].[trg_backupUsertbl]    Script Date: 2021-02-16 ���� 12:14:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER   trigger [dbo].[trg_backupUsertbl]
on [dbo].[userTBL]
--with encryption
after update,delete
as
	declare @modType nchar(2)

	if (COLUMNS_UPDATED() > 0)
		set @modType = '����'
	else
		set @modType = '����'

	insert into backup_userTBL
		SELECT [userID],[username],[birthYear],[addr]
			  ,[mobile1],[mobile2],[height],[mDate]
			  ,@modType,getdate(),user_name()
		FROM deleted
GO


