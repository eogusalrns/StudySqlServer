use sqlDB;
go
--프로시저 생성
create procedure usp_users
as
	select * from userTBL;
go

--프로시저 수정
alter procedure usp_users
as
	select * from userTBL;
go

--생성 및 수정을 동시에 하는 프로스저
create or alter procedure usp_users
as
	select userID,username,birthYear from userTBL;
go

exec usp_users;