create or alter view uv_nonerentalMember
--outer join 쿼리
as
SELECT r.rnetalidx
      --,r.memberidx
	  ,m.memberName
      --,r.bookidx
	  --,b.cateidx
	  ,c.cateName
	  ,b.bookName
	  ,b.author
      ,format(r.rentalDt,'yyyy-MM-dd') as 'rentalDt'
      ,format(r.returnDt,'yyyy-MM-dd') as 'returnDt'
      ,dbo.ufn_getState(r.rentalState) as '대여상태'
  FROM rentalTBL as r
 right outer join memberTBL as m
    on r.memberidx = m.memberidx
  left outer join booksTBL as b
    on r.bookidx = b.bookidx
  left outer join cateTBL as c
    on b.cateidx = c.cateidx 
 where rnetalidx is null;

 -- 데이터 입력
 insert into booksTBL
 (
	cateidx,
	bookName,
	author,
	company,
	releaseDate,
	ISBN,
	price
 )
 values
 (
 	'N0002',
	'순수하지 않은 감각',
	'요안나',
	'로코코',
	'2019-10-02',
	'9791135445705',
	12500
 );

 --책 테이블 위의 책정보 설명,등록일자 수정
begin tran;
 update booksTBL
    set descriptions='부명그룹의 브레인이자 핵심 TF팀 리더, 강태욱 수석.'
	   ,regDate='2021-02-18'
  where bookidx = 18 ;
  
  select *
    from booksTBL;
rollback;
commit;

--카테고리 입력
begin tran;
insert into cateTBL
values --('I0001','대화/협상'),
       ('I0002','성공/처세'),
	   ('I0003','시간관리');

select * from cateTBL;

rollback;
commit;

delete from cateTBL where cateidx='I0003';

delete from cateTBL where cateidx in('I0001','I0002');