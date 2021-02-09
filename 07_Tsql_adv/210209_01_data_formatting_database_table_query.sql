use sqlDB;

declare @myVar1 int;
declare @myVar2 smallint, @myVar3 decimal(3,2);
declare @myVar4 char(20);

select '값은' + cast(@myvar3 as varchar);
set @myVar1=1.5e6;
set @myVar2=133*133;
set @myVar3=1.52;
set @myVar4='가수 이름==> ';

select @myVar1 'int 이름';
select @myVar2+@myVar3 '형 변환 체쿠';
select @myVar4 '나는 가수닭', username '유저이름',height from userTBL where height >180;

declare @myVar5 tinyint;--255
set @myVar5 = 3;

select top(@myVar5) userName, height from userTBL order by height desc;
select top(@myVar5) userName, height from userTBL;

select convert(float,amount) 'amount' from buyTBL;
select TRY_CONVERT(float,amount) 'amount' from buyTBL;
select avg(convert(decimal,amount)) '구매평균' from buyTBL;

select price,amount,price/amount '단가/수량' from buyTBL;

select parse('2021년 2월 9일' as date);
select TRY_PARSE('2021년 2월 29일' as date);

select parse('123.45'as decimal(5,2));
select try_parse('123.45'as int);

select cast('11' as int);

-- 스칼라함수 (단일 리턴함수)
select GETDATE() '현재 시각';

select year(GETDATE()) '금년';
select month(GETDATE()) '금월';
select day(GETDATE()) '금일';

select abs(-100);

select round(PI(),5);
select round(1234.5678,-1);

select rand()*100;
select cast((rand() * 100) as int);

select iif(200>100,'참','거참');

--문자열 함수
select ASCII('a'),ascii('A');
select CHAR(98), char(66);
select unicode('갈');
select nchar(44040);

--리얼루 자주 쓰임

--문자열 결합
select CONCAT('SQL ','Server ',2019);
--문자열 시작위치 리턴
select charindex('Server', 'SQL Server 2019');
--left right
select left('SQL Server 2019',3),right('SQL Server 2019',4);
--substring
select SUBSTRING('hello world',7,3);
select SUBSTRING('반갑다 세상아',3,3);
--len
select len('안녕하세요'),len('hello world');
--lower upper
select lower('SQL'),upper('slash');
--ltrim rtrim
select len(ltrim('   hello world   ')),
	   len(rtrim('   hello world   ')),
	    len(trim('   hello world   '));
--replace
select replace('SQL Server 2016','2016','2019');
--format 정말 많이쓴다고함
select format(getDate(),'');--기본
select format(getDate(),'dd/MM/yyyy');
select format(getDate(),'yyyy-MM-dd hh:mm:ss:ms');
select format(getDate(),'yyyy-MM-dd');
select format(getDate(),'hh:mm:ss');
select getDate();

--나만의 연습 타임