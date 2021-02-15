declare @point int = 99, @credit char;
set @credit=
	case
		when (@point >= 90) then 'A'
		when (@point >= 80) then 'B'
		when (@point >= 70) then 'C'
		when (@point >= 60) then 'D'
		else 'F'
	end

print concat('포인트점수는 = ',@point);
print concat('신용점수는 = ',@credit);