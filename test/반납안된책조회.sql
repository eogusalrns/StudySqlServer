--아직 반납하지않은 책들 리스트
select b.Names
	  ,b.Price
	  ,r.rentalDate
	  ,r.returnDate
  from bookstbl as b
 inner join rentaltbl as r
    on b.idx = r.memberIdx
 where r.returnDate > getdate()