use tempdb;
create table maxTb1
( col1 varchar(max),
  col2 nvarchar(max));

insert into maxTb1 
values (REPLICATE('A',1000000),REPLICATE('가',1000000));

select len(col1) 'varchar(max)',len(col2) 'nvarchar(max)'
from maxTb1;

delete from maxTb1;
insert into maxTb1 values(
	REPLICATE(cast('A' as varchar(max)),1000000),
	REPLICATE(CONVERT(varchar(max),'가'),1000000));
select len(col1) as 'varchar(max)', len(col2) as 'nvarchar(max)'
from maxTb1;

update maxTb1 set col1 = REPLACE( (select col1 from maxTb1),'A','B'),
				  col2 = Replace( (select col2 from maxTb1),'가','나');

update maxTb1
set col1=stuff( (select col1 from maxTb1),999991,10,replicate('C',10)),
	col2=stuff( (select col2 from maxTb1),999991,10,replicate('다',10));

update maxTb1
set col1.write('DDDDD',999996,5),col2.write('라라라라라',999996,5);

select reverse((select col1 from maxTb1));
select reverse((select col2 from maxTb1));