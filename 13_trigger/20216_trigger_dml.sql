USE [sqlDB]
GO

UPDATE [dbo].[userTBL]
   SET [username] = '°ü¿îÀå'
 WHERE [userID] = 'JKW';
GO

delete from userTBL
 where userID = 'JKW';
