select top(10) concat(right(Names,2),', ',left(names,1)) as '�����̸�'
      ,levels
	  ,left(Addr,2) as '����'
	  ,lower(Email) as '�̸���'
  from membertbl;