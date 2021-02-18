--outer join 쿼리

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