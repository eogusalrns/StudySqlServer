use sqlDB;

declare @myVar1 int;
declare @myVar2 smallint, @myVar3 decimal(5,2);
declare @myVar4 char(20);

set @myVar1=1.5e6;
set @myVar2=133*133;
set @myVar3=1.52;
set @myVar4='가수 이름==> ';

select @myVar1 'int 이름';
select @myVar2+@myVar3 '형 변환 체쿠';
select @myVar4 '나는 가수닭', username from userTBL where height >180;