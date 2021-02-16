use sqlDB;
go

declare cur_userTBL cursor global
	for select username,height from userTBL;


open cur_userTBL;

declare @username nchar(8);
declare @height smallint; 
declare @cnt int = 0;--회원수(읽은 행의 수)
declare @totalheight int = 0;

fetch next from cur_userTBL into @username,@height; -- 커서 값을 읽어서 @height 변수에 할당

--반복문
while @@FETCH_STATUS = 0
begin
	set @cnt += 1;
	set @totalheight += @height;
	print concat('회원 : ',@username,' 키 : ',@height);
	fetch next from cur_userTBL into @username,@height;
end

print @totalheight;
print @cnt;
print concat('회원 키 평균 : ',@totalheight/@cnt);

close cur_userTBL;
deallocate cur_userTBL;