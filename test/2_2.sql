select Idx
      ,concat('���� : ',Names) as Names
	  ,concat('���� > ',Author) as Author
	  ,format(ReleaseDate,'yyyy�� MM�� dd��') as '������'
	  ,ISBN
	  ,format(Price,'#,#��') as '����'
  from bookstbl
 order by idx desc;