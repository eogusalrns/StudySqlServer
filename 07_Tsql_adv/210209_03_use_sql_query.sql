--use sqlDB;
--go

--select ROW_NUMBER() over(partition by addr order by height desc,username asc) 'Å°Å«¼øÀ§', username,addr,height
--from userTBL;


--select Rank() over(partition by addr order by height desc) 'Å°Å«¼øÀ§', username,addr,height
--from userTBL;


--select Dense_Rank() over(order by height desc) 'Å°Å«¼øÀ§', username,addr,height
--from userTBL;

--pivot
create table pivotTBL
(
username varchar(10),
season nvarchar(2),
amount int
)

insert into pivotTBL values('±è¹ü¼ö','°Ü¿ï',10),
						('À±Á¾½Å','¿©¸§',15),
						('±è¹ü¼ö','°¡À»',25),
						('±è¹ü¼ö','º½',3),
						('±è¹ü¼ö','º½',37),
						('À±Á¾½Å','°Ü¿ï',40),
						('±è¹ü¼ö','¿©¸§',14),
						('±è¹ü¼ö','°Ü¿ï',22),
						('À±Á¾½Å','¿©¸§',64);

select * from pivotTBL
pivot (sum(amount)
		for season
		in ([º½],[¿©¸§],[°¡À»],[°Ü¿ï])) as resultpivot;

--json
select username,height
  from userTBL
 where height >= 180
   for json auto;