create or alter view uv_nonerentalMember
--outer join ����
as
SELECT r.rnetalidx
      --,r.memberidx
	  ,m.memberName
      --,r.bookidx
	  --,b.cateidx
	  ,c.cateName
	  ,b.bookName
	  ,b.author
      ,format(r.rentalDt,'yyyy-MM-dd') as 'rentalDt'
      ,format(r.returnDt,'yyyy-MM-dd') as 'returnDt'
      ,dbo.ufn_getState(r.rentalState) as '�뿩����'
  FROM rentalTBL as r
 right outer join memberTBL as m
    on r.memberidx = m.memberidx
  left outer join booksTBL as b
    on r.bookidx = b.bookidx
  left outer join cateTBL as c
    on b.cateidx = c.cateidx 
 where rnetalidx is null;

 -- ������ �Է�
 insert into booksTBL
 (
	cateidx,
	bookName,
	author,
	company,
	releaseDate,
	ISBN,
	price
 )
 values
 (
 	'N0002',
	'�������� ���� ����',
	'��ȳ�',
	'������',
	'2019-10-02',
	'9791135445705',
	12500
 );

 --å ���̺� ���� å���� ����,������� ����
begin tran;
 update booksTBL
    set descriptions='�θ�׷��� �극������ �ٽ� TF�� ����, ���¿� ����.'
	   ,regDate='2021-02-18'
  where bookidx = 18 ;
  
  select *
    from booksTBL;
rollback;
commit;

--ī�װ� �Է�
begin tran;
insert into cateTBL
values --('I0001','��ȭ/����'),
       ('I0002','����/ó��'),
	   ('I0003','�ð�����');

select * from cateTBL;

rollback;
commit;

delete from cateTBL where cateidx='I0003';

delete from cateTBL where cateidx in('I0001','I0002');