use sqlDB;
go
--이름이 김경호인 사람 조회
select * from userTBL
where username='김경호';

--1970이후 출생 이고 키가 182이상 사람의 아이디와 이름만 조회
select userID,username 
from userTBL
where birthYear>=1970 and height>=182;

--1970이후 출생 이거나 키가 182이상 인 사람의 아이디와 이름만 조회
select userID,username 
from userTBL
where birthYear>=1970 or height>=182;

--키가 180~183사이인 사람만 조회
select userID,username,height 
from userTBL
where height between 180 and 183;

--지역이 경남, 전남, 경북
select userID,username,addr 
from userTBL
where addr in('경남','전남','경북');

-- 성이 김씨인 사람 조회
select userId,username
from userTBL
where username like '김%';

-- 이름이 종신인 사람 조회
select userId,username
from userTBL
where username like '_종신';

--서브쿼리
select userId,username,height
from userTBL
where height > (select height from userTBL where username='김경호');

--서브쿼리 any (or개념)
select userId,username,height,addr
from userTBL
where height >= any (select height from userTBL where addr='경남');

--서브쿼리 all (and개념)
select userId,username,height,addr
from userTBL
where height >= all (select height from userTBL where addr='경남');

--서브쿼리 in
select userId,username,height,addr
from userTBL
where height in (select height from userTBL where addr='경남');

--order by 정렬 오름차순
select userID,username,mDate
  from userTBL
 order by mDate;

select *
  from userTBL
 order by userID;

--distinct : 중복 값 제거
 select distinct addr
   from userTBL;

select top(5) *
  from userTBL
 order by mDate desc;

 --offset 앞선 갯수만큼 뛰어넘은 후 조회
 select userID,username,birthYear
   from userTBL
  order by birthYear
 offset 4 rows;

 --select into : 테이블 복사
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

select userID,sum(amount) '합계'
  from buyTBL
 group by userID;

 --min max
 select userID,username,min(height) '최소키',max(height) '최대키'
   from userTBL
  group by userID,username;
  
select userID,username,height
  from userTBL
where height=(select min(height) from userTBL)
   or height=(select max(height) from userTBL);

--갯수
select count(*) '회원수'from userTBL;
select count(*) '구매내역수'from buyTBL;