select * 
  from StdTBl as s
  left outer join ClubRegTbl as r
    on s.id = r.std_id
  full outer join ClubTbl as c
    on r.club_id = c.id;

select * 
  from StdTBl as s
  left outer join ClubRegTbl as r
    on s.id = r.std_id
  left outer join ClubTbl as c
    on r.club_id = c.id;

select * 
  from StdTBl as s
  left outer join ClubRegTbl as r
    on s.id = r.std_id
  right outer join ClubTbl as c
    on r.club_id = c.id;

select * 
  from StdTBl as s
  left outer join ClubRegTbl as r
    on s.id = r.std_id;

select * 
  from ClubRegTbl as r
 right outer join ClubTbl as c
    on r.club_id = c.id;