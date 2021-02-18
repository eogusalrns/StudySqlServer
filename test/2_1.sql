select top(10) concat(right(Names,2),', ',left(names,1)) as '변경이름'
      ,levels
	  ,left(Addr,2) as '도시'
	  ,lower(Email) as '이메일'
  from membertbl;