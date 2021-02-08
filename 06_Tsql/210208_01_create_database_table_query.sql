use tempdb;
go

create database sqlDB;
go

--DB 생성
use sqlDB;

create table userTBL --회원 테이블
(
	userID char(8) not null primary key, --사용자 아이디
	username NVARCHAR(10) not null, --이름
	birthYear int not null, --출생년도
	addr NChar(2) NOT NULL, --지역
	mobile1 char(3), --휴대폰 ex)010
	mobile2 char(8), --휴대폰 나머지 전화번호 하이푼(-) 제외
	height SMALLINT, --키
	mDate DATE -- 가입일
);
go
create table buyTBL --구매 테이블
(
	num int identity not null primary key, --순번
	userID Char(8) not null --아이디(FK)
	foreign key references userTBL(userID),
	prodName NvarCHAR(20) not null, --물품명
	groupName NCHAR(4), --분류
	price int not null, --단가
	amount smallint not null -- 수량
);
go