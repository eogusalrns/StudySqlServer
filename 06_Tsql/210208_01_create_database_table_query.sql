use tempdb;
go

create database sqlDB;
go

--DB ����
use sqlDB;

create table userTBL --ȸ�� ���̺�
(
	userID char(8) not null primary key, --����� ���̵�
	username NVARCHAR(10) not null, --�̸�
	birthYear int not null, --����⵵
	addr NChar(2) NOT NULL, --����
	mobile1 char(3), --�޴��� ex)010
	mobile2 char(8), --�޴��� ������ ��ȭ��ȣ ����Ǭ(-) ����
	height SMALLINT, --Ű
	mDate DATE -- ������
);
go
create table buyTBL --���� ���̺�
(
	num int identity not null primary key, --����
	userID Char(8) not null --���̵�(FK)
	foreign key references userTBL(userID),
	prodName NvarCHAR(20) not null, --��ǰ��
	groupName NCHAR(4), --�з�
	price int not null, --�ܰ�
	amount smallint not null -- ����
);
go