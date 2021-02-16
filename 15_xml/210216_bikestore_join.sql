use BikeStores;
go

select p.product_id,p.product_name,b.brand_name,category_name,
	   p.model_year,
	   format(p.list_price,'$ #,#.00') '���Ű���(�޷�)'
  from production.products p
 inner join production.categories c
	on p.category_id = c.category_id
 inner join production.brands b
    on p.brand_id = b.brand_id
 order by list_price desc;--��Ѽ�

--
select o.order_id,concat(c.first_name,' ',c.last_name) '�� ����',
	   case o.order_status
		when 1 then '�ֹ��Ϸ�'
		when 2 then '�����Ϸ�'
		when 3 then '�����'
		when 4 then '��ۿϷ�'
		else '�����߻�'
	   end �ֹ���Ȳ,
	   o.order_date,o.required_date,o.shipped_date,sr.store_name �����̸�,concat(s.first_name,' ',s.last_name) '���� �̸�'
  from sales.orders o
 inner join sales.customers c
    on o.customer_id = c.customer_id
 inner join sales.staffs s
    on o.staff_id = s.staff_id
 inner join sales.stores sr
    on o.store_id = sr.store_id;