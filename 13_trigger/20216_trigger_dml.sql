USE [sqlDB]
GO

UPDATE [dbo].[userTBL]
   SET [username] = '������'
 WHERE [userID] = 'JKW';
GO

delete from userTBL
 where userID = 'JKW';
