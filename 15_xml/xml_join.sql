select u.userID,username,birthYear,addr,height,prodName,price
  from userTBL u
 inner join buyTBL b
	on u.userID = b.userID
 where height > 170
   --for xml auto;
   for json auto;