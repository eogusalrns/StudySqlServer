--union
select clubName,buildingNum from ClubTBL
union 
select stdName,region from stdTBL;

--union all  / except(������)
select stdName,region from stdTBL
except --union all
select stdName,region from stdTBL;
