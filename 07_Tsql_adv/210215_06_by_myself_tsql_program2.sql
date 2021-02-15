declare @year int = 1976;

if @year >= 1970
	select * from userTBL where birthYear >= @year;
else
	print '해당 자료는 없습니다.'