 --����� ���� ���� �Լ�
create or alter function ufn_getLevel(@levels char(1))
	returns nvarchar(5)
as
begin
	declare @result nvarchar(5); -- ���ȸ��,�ǹ�ȸ��,�����ȸ��,öȸ�� �� ����
	set @result = case @levels
			when 'A' then '���'
			when 'B' then '�ǹ�'
			when 'C' then '�����'
			when 'D' then '���̾�'
			when 'S' then 'ç����'
			else '��ȸ��'
	end;
	return @result;
end
go