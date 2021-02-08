--잘못된 필터링
select userID,sum(price*amount) '아이디별 구매금액'
  from buyTBL
 --where sum(price*amount) >1000
 group by userID
 having sum(price*amount) >1000
 order by sum(price*amount) desc;

 -- rollup/cube
 select num, groupName,sum(price*amount) '구매금액',
		GROUPING_ID(groupname,num)
   from buyTBL
  group by rollup(groupName,num);

-- userID, groupName가지고 cube 다차원 합계
   select userID,groupName,sum(price*amount) '구매금액'
   from buyTBL
  group by cube(groupName,userID);

-- without CTE
select userID, sum(price*amount) 'total'
  from buyTBL
 group by userID
 order by 'total' desc;

-- with CTE
with cte_tmp(userID,total)
as
(
	select userID, sum(price*amount) 'total'
	  from buyTBL
	 group by userID
)
select * from cte_tmp order by total desc;
--재귀적 cte 어렵다! 나중에 해볼것 p242