--outer join 테이블 3개
select *
  from stdTBL s
  left outer join ClubRegTBL R
    on s.id = R.std_id
  full outer join ClubTBL C
    on R.club_id = C.id;

select *
  from ClubRegTBL R
  left outer join stdTBL s
    on s.id = R.std_id
  left outer join ClubTBL C
    on R.club_id = C.id;

select *
  from ClubRegTBL R
  left outer join stdTBL s
    on s.id = R.std_id
 right outer join ClubTBL C
    on R.club_id = C.id;

select *
  from stdTBL s
  left outer join ClubRegTBL R
    on s.id = R.std_id;