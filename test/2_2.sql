select Idx
      ,concat('제목 : ',Names) as Names
	  ,concat('저자 > ',Author) as Author
	  ,format(ReleaseDate,'yyyy년 MM월 dd일') as '출판일'
	  ,ISBN
	  ,format(Price,'#,#원') as '가격'
  from bookstbl
 order by idx desc;