declare @year int = 1976;

if @year >= 1970
	select * from userTBL where birthYear >= @year;
else
	print '�ش� �ڷ�� �����ϴ�.'