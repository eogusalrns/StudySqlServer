use sqlDB;
go

declare cur_userTBL cursor global
	for select username,height from userTBL;


open cur_userTBL;

declare @username nchar(8);
declare @height smallint; 
declare @cnt int = 0;--ȸ����(���� ���� ��)
declare @totalheight int = 0;

fetch next from cur_userTBL into @username,@height; -- Ŀ�� ���� �о @height ������ �Ҵ�

--�ݺ���
while @@FETCH_STATUS = 0
begin
	set @cnt += 1;
	set @totalheight += @height;
	print concat('ȸ�� : ',@username,' Ű : ',@height);
	fetch next from cur_userTBL into @username,@height;
end

print @totalheight;
print @cnt;
print concat('ȸ�� Ű ��� : ',@totalheight/@cnt);

close cur_userTBL;
deallocate cur_userTBL;