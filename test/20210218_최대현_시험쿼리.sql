--1_1
select lower(Email) as email
      ,mobile
	  ,names
	  ,addr
  from membertbl
 order by Names desc;

--1_2
select names
      ,author
	  ,releaseDate
	  ,price
  from bookstbl;

--2_1
select top(10) concat(right(Names,2),', ',left(names,1)) as '변경이름'
      ,levels
	  ,left(Addr,2) as '도시'
	  ,lower(Email) as '이메일'
  from membertbl;

--2_2
select Idx
      ,concat('제목 : ',Names) as Names
	  ,concat('저자 > ',Author) as Author
	  ,format(ReleaseDate,'yyyy년 MM월 dd일') as '출판일'
	  ,ISBN
	  ,format(Price,'#,#원') as '가격'
  from bookstbl
 order by idx desc;

--3_1
select b.Idx as '번호'
      ,b.Division as '장르번호'
	  ,d.Names as '장르'
	  ,b.Names as '책제목'
	  ,b.Author as '저자'
  from bookstbl as b
 inner join divtbl as d
    on b.Division = d.Division
 where d.names = '로맨스'

--3_2
select m.Names
      ,m.Levels
	  ,m.Addr
	  ,r.rentalDate
  from membertbl as m
  left outer join rentaltbl as r
    on m.Idx = r.memberIdx
 where r.rentalDate is null;

--4_1
insert into divtbl
values ('I002','자기개발서');

--4_2
update membertbl
   set Addr = '부산시 해운대구'
      ,Mobile = '010-6683-7732'
 where Names = '성명건';

--5_1
select d.names, sum(price) as '총합계금액'
  from bookstbl as b
 inner join divtbl as d
    on b.Division = d.Division
 group by rollup(d.Names);