----������Լ� �����
--select *,year(getdate())-birthYear + 1 '(��) ����'
--  from userTBL;

--����� �Լ� ���
select *, 
	   dbo.ufn_getAge(birthYear) as '����',
	   dbo.ufn_getZodiac(birthYear) as '��'
  from userTBL;