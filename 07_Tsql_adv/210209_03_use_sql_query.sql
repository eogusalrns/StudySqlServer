use sqlDB;
go

select ROW_NUMBER() over(partition by addr order by height desc,username asc) '키큰순위', username,addr,height
from userTBL;


select Rank() over(partition by addr order by height desc) '키큰순위', username,addr,height
from userTBL;


select Dense_Rank() over(order by height desc) '키큰순위', username,addr,height
from userTBL;

--pivot
create table pivotTBL
(
username varchar(10),
season nvarchar(2),
amount int
)

insert into pivotTBL values('김범수','겨울',10),
						('윤종신','여름',15),
						('김범수','가을',25),
						('김범수','봄',3),
						('김범수','봄',37),
						('윤종신','겨울',40),
						('김범수','여름',14),
						('김범수','겨울',22),
						('윤종신','여름',64);

select * from pivotTBL
pivot (sum(amount)
		for season
		in ([봄],[여름],[가을],[겨울])) as resultpivot;