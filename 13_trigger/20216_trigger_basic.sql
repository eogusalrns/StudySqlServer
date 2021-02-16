use sqlDB;
go

create trigger trg_testtbl
on testtbl
after delete, update -- 삭제, 수정할 때 트리거 발생
as
	print '트리거 발생';

insert into testTBL values('마마무');
select * from testTBL where txt='마마무';
update testTBL set txt='마마무뉴!' where id=4;
delete testTBL where id =3;