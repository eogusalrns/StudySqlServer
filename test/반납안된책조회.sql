--���� �ݳ��������� å�� ����Ʈ
select b.Names
	  ,b.Price
	  ,r.rentalDate
	  ,r.returnDate
  from bookstbl as b
 inner join rentaltbl as r
    on b.idx = r.memberIdx
 where r.returnDate > getdate()