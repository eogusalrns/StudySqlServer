--실제 회원정보 불러오기 이름순
select memberID,memberName,levels,mobile,email
  from memberTBL
 where levels <>'S'
 order by levels,memberName;

 --책 정보 보기
 select cateidx,bookName,author,
        interpreter,company,price
   from booksTBL
  order by price desc;
  
select * from cateTBL;

-- 시스템 함수사용 쿼리
select memberID,
	   concat(right(memberName,2),' ', left(memberName,1)) '회원이름',
	   dbo.ufn_getLevel(levels) as '회원등급',
	   mobile,
	   upper(email) as '이메일'
  from memberTBL
 where levels <>'S'
 order by levels,memberName;

 -- 책 정보, 시스템 함수, 포맷 함수 쿼리
SELECT bookidx
      ,cateidx
      ,concat('책제목 > ',bookName) as bookName
      ,author
      ,isnull(interpreter,'역자 없음') as 역자
      ,company
      ,format(releaseDate,'yyyy년MM월dd일') as 출판일
      ,format(price,'#,#원') as 가격
  FROM booksTBL
  
  -- 책정보 조인
SELECT-- b.bookidx
      --,b.cateidx
	   c.cateName
      ,b.bookName
      ,b.author
      ,b.interpreter
      ,b.company
  FROM dbo.booksTBL as b
 inner join cateTBL as c
    on b.cateidx = c.cateidx
 order by b.cateidx;

 -- 대여된 책의 정보 쿼리 조인
 SELECT r.rnetalidx
	   ,m.memberName
	   ,b.bookName
       ,format(r.rentalDt,'yyyy년 MM월 dd일') '대여일'
       ,format(r.returnDt,'yyyy년 MM월 dd일') '반납일'
       ,dbo.ufn_getState(r.rentalState) as '대여상태'
  FROM dbo.rentalTBL as r
 inner join memberTBL as m
    on r.memberidx = m.memberidx
 inner join booksTBL as b
    on r.bookidx = b.bookidx
--책을 안빌린 회원 조회
 SELECT r.rnetalidx
	   ,m.memberName
	   ,b.bookName
	   ,b.author
       ,format(r.rentalDt,'yyyy년 MM월 dd일') '대여일'
       ,dbo.ufn_getState(r.rentalState) as '대여상태'
  FROM dbo.rentalTBL as r
 right outer join booksTBL as b
    on r.bookidx = b.bookidx
	
 left outer join memberTBL as m
    on r.memberidx = m.memberidx
 --where r.rnetalidx is null;

 --우리 책 대여점에 없는 소설장르
 select c.cateidx
       ,c.cateName
	   ,b.bookName
   from cateTBL as c
   left outer join booksTBL as b
     on c.cateidx = b.cateidx
 SELECT bookidx
      ,cateidx
      ,bookName
      ,author
      ,interpreter
      ,company
      ,releaseDate
      ,ISBN
      ,price
      ,descriptions
      ,regDate
  FROM dbo.booksTBL
