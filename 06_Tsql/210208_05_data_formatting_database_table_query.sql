use sqlDB;

declare @myVar1 int;
declare @myVar2 smallint, @myVar3 decimal(5,2);
declare @myVar4 char(20);

set @myVar1=1.5e6;
set @myVar2=133*133;
set @myVar3=1.52;
set @myVar4='���� �̸�==> ';

select @myVar1 'int �̸�';
select @myVar2+@myVar3 '�� ��ȯ ü��';
select @myVar4 '���� ������', username from userTBL where height >180;