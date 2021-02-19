 SELECT d.names
      , b.price
      , count(d.names) as '책 개수'
	  , sum(b.price) as '대여 책 총 금액'
	  , 
  FROM rentaltbl as r
  inner join bookstbl as b
  on r.bookIdx = b.idx
  inner join divtbl as d
  on b.Division = d.Division
  group by d.names, b.price
  order by d.names