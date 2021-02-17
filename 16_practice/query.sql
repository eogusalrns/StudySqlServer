--���� ȸ������ �ҷ����� �̸���
select memberID,memberName,levels,mobile,email
  from memberTBL
 where levels <>'S'
 order by levels,memberName;

 --å ���� ����
 select cateidx,bookName,author,
        interpreter,company,price
   from booksTBL
  order by price desc;
  
select * from cateTBL;

-- �ý��� �Լ���� ����
select memberID,
	   concat(right(memberName,2),' ', left(memberName,1)) 'ȸ���̸�',
	   dbo.ufn_getLevel(levels) as 'ȸ�����',
	   mobile,
	   upper(email) as '�̸���'
  from memberTBL
 where levels <>'S'
 order by levels,memberName;

 -- å ����, �ý��� �Լ�, ���� �Լ� ����
SELECT bookidx
      ,cateidx
      ,concat('å���� > ',bookName) as bookName
      ,author
      ,isnull(interpreter,'���� ����') as ����
      ,company
      ,format(releaseDate,'yyyy��MM��dd��') as ������
      ,format(price,'#,#��') as ����
  FROM booksTBL
  
  -- å���� ����
SELECT-- b.bookidx
      --,b.cateidx
	   c.cateName
      ,b.bookName
      ,b.author
      ,b.interpreter
      ,b.company
  FROM dbo.booksTBL as b
 inner join cateTBL as c
    on b.cateidx = c.cateidx
 order by b.cateidx;

 -- �뿩�� å�� ���� ���� ����
 SELECT r.rnetalidx
	   ,m.memberName
	   ,b.bookName
       ,format(r.rentalDt,'yyyy�� MM�� dd��') '�뿩��'
       ,format(r.returnDt,'yyyy�� MM�� dd��') '�ݳ���'
       ,dbo.ufn_getState(r.rentalState) as '�뿩����'
  FROM dbo.rentalTBL as r
 inner join memberTBL as m
    on r.memberidx = m.memberidx
 inner join booksTBL as b
    on r.bookidx = b.bookidx
--å�� �Ⱥ��� ȸ�� ��ȸ
 SELECT r.rnetalidx
	   ,m.memberName
	   ,b.bookName
	   ,b.author
       ,format(r.rentalDt,'yyyy�� MM�� dd��') '�뿩��'
       ,dbo.ufn_getState(r.rentalState) as '�뿩����'
  FROM dbo.rentalTBL as r
 right outer join booksTBL as b
    on r.bookidx = b.bookidx
	
 left outer join memberTBL as m
    on r.memberidx = m.memberidx
 --where r.rnetalidx is null;

 --�츮 å �뿩���� ���� �Ҽ��帣
 select c.cateidx
       ,c.cateName
	   ,b.bookName
   from cateTBL as c
   left outer join booksTBL as b
     on c.cateidx = b.cateidx
 SELECT bookidx
      ,cateidx
      ,bookName
      ,author
      ,interpreter
      ,company
      ,releaseDate
      ,ISBN
      ,price
      ,descriptions
      ,regDate
  FROM dbo.booksTBL
