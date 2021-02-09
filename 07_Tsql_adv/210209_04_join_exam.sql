use sqlDB;
select u.username,u.addr,
	   CONCAT(u.mobile1,'-',left(u.mobile2,4),'-',right(u.mobile2,4)) 'mobile',
	   b.prodName,b.price,b.amount
  from buyTBL b
 inner join userTBL u
	on b.userID = u.userID
 where b.userID = 'JYP';

 select *
 from buyTBL
 inner join userTBL
	on buyTBL.userID = userTBL.userID
 where buyTBL.userID = 'JYP';
