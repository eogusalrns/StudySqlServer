 SELECT d.names
      , b.price
      , count(d.names) as 'å ����'
	  , sum(b.price) as '�뿩 å �� �ݾ�'
	  , 
  FROM rentaltbl as r
  inner join bookstbl as b
  on r.bookIdx = b.idx
  inner join divtbl as d
  on b.Division = d.Division
  group by d.names, b.price
  order by d.names