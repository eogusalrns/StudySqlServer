use sqlDB;
go
--���ν��� ����
create procedure usp_users
as
	select * from userTBL;
go

--���ν��� ����
alter procedure usp_users
as
	select * from userTBL;
go

--���� �� ������ ���ÿ� �ϴ� ���ν���
create or alter procedure usp_users
as
	select userID,username,birthYear from userTBL;
go

exec usp_users;