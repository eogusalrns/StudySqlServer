use sqlDB;
--select * from stdTBL;
--select * from ClubTBL;
--select * from ClubRegTBL;

--standard sql inner join
select s.id,s.stdName,c.clubName,c.buildingNum
  from stdTBL s
  inner join ClubRegTBL R
	on s.id = R.std_id
  inner join ClubTBL C
	on R.club_id = C.id

--inner join 약식(T-SQL)
select s.id,s.stdName,c.clubName,c.buildingNum
  from stdTBL s,ClubRegTBL R,ClubTBL C
	where s.id = R.std_id and R.club_id = C.id;

--outer join (외부 조인)
select s.id,s.stdName,c.clubName,c.buildingNum
  from stdTBL s
  left outer join ClubRegTBL R
	on s.id = R.std_id
  left outer join ClubTBL C
	on R.club_id = C.id

--userTBL/buyTBL
select u.username,u.addr,b.prodName,b.price
  from userTBL u
  full outer join buyTBL b
    on u.userID = b.userID;

 select * from buyTBL;