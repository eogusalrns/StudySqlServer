use sqlDB;
go
--�̸��� ���ȣ�� ��� ��ȸ
select * from userTBL
where username='���ȣ';

--1970���� ��� �̰� Ű�� 182�̻� ����� ���̵�� �̸��� ��ȸ
select userID,username 
from userTBL
where birthYear>=1970 and height>=182;

--1970���� ��� �̰ų� Ű�� 182�̻� �� ����� ���̵�� �̸��� ��ȸ
select userID,username 
from userTBL
where birthYear>=1970 or height>=182;

--Ű�� 180~183������ ����� ��ȸ
select userID,username,height 
from userTBL
where height between 180 and 183;

--������ �泲, ����, ���
select userID,username,addr 
from userTBL
where addr in('�泲','����','���');

-- ���� �达�� ��� ��ȸ
select userId,username
from userTBL
where username like '��%';

-- �̸��� ������ ��� ��ȸ
select userId,username
from userTBL
where username like '_����';

--��������
select userId,username,height
from userTBL
where height > (select height from userTBL where username='���ȣ');

--�������� any (or����)
select userId,username,height,addr
from userTBL
where height >= any (select height from userTBL where addr='�泲');

--�������� all (and����)
select userId,username,height,addr
from userTBL
where height >= all (select height from userTBL where addr='�泲');

--�������� in
select userId,username,height,addr
from userTBL
where height in (select height from userTBL where addr='�泲');

--order by ���� ��������
select userID,username,mDate
  from userTBL
 order by mDate;

select *
  from userTBL
 order by userID;

--distinct : �ߺ� �� ����
 select distinct addr
   from userTBL;

select top(5) *
  from userTBL
 order by mDate desc;

 --offset �ռ� ������ŭ �پ���� �� ��ȸ
 select userID,username,birthYear
   from userTBL
  order by birthYear
 offset 4 rows;

 --select into : ���̺� ����
 select * into buyTBL2
   from buyTBL;

select userID,prodname into buyTBL3
  from buyTBL;

--group by
select *
  from buyTBL;

select userID,amount
  from buyTBL
 order by userID;

select userID,sum(amount) '�հ�'
  from buyTBL
 group by userID;

 --min max
 select userID,username,min(height) '�ּ�Ű',max(height) '�ִ�Ű'
   from userTBL
  group by userID,username;
  
select userID,username,height
  from userTBL
where height=(select min(height) from userTBL)
   or height=(select max(height) from userTBL);

--����
select count(*) 'ȸ����'from userTBL;
select count(*) '���ų�����'from buyTBL;

--�߸��� ���͸�
select sum(price*amount) '��ü ���űݾ�'
  from buyTBL;