use sqlDB;
go

create trigger trg_testtbl
on testtbl
after delete, update -- ����, ������ �� Ʈ���� �߻�
as
	print 'Ʈ���� �߻�';

insert into testTBL values('������');
select * from testTBL where txt='������';
update testTBL set txt='��������!' where id=4;
delete testTBL where id =3;