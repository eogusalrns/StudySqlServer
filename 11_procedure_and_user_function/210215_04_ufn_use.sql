----사용자함수 사용전
--select *,year(getdate())-birthYear + 1 '(만) 나이'
--  from userTBL;

--사용자 함수 사용
select *, 
	   dbo.ufn_getAge(birthYear) as '나이',
	   dbo.ufn_getZodiac(birthYear) as '띠'
  from userTBL;