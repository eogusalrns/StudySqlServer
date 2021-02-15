use sqlDB;
go

select u.userID, u.username,
	   iif(sum(price * amount) is null, 0, sum(price*amount)) 'ÃÑ±¸¸Å¾×',
	   case
			when(sum(price*amount)>=1500) then 'VVIP'
			when(sum(price*amount)>=1000) then 'VIP'
			when(sum(price*amount)>=1) then 'Person'
			else 'Ghost'
		end '°í°´µî±Þ'
from buyTBL b
right outer join userTBL u
	on b.userID = u.userID
group by u.userID,u.username
order by sum(price*amount) desc;

select * from userTBL;