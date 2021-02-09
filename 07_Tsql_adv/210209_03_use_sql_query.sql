use sqlDB;
go

select ROW_NUMBER() over(partition by addr order by height desc,username asc) 'Űū����', username,addr,height
from userTBL;


select Rank() over(partition by addr order by height desc) 'Űū����', username,addr,height
from userTBL;


select Dense_Rank() over(order by height desc) 'Űū����', username,addr,height
from userTBL;

--pivot
create table pivotTBL
(
username varchar(10),
season nvarchar(2),
amount int
)

insert into pivotTBL values('�����','�ܿ�',10),
						('������','����',15),
						('�����','����',25),
						('�����','��',3),
						('�����','��',37),
						('������','�ܿ�',40),
						('�����','����',14),
						('�����','�ܿ�',22),
						('������','����',64);

select * from pivotTBL
pivot (sum(amount)
		for season
		in ([��],[����],[����],[�ܿ�])) as resultpivot;