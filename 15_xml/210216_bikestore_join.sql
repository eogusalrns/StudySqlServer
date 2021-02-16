use BikeStores;
go

select p.product_id,p.product_name,b.brand_name,category_name,
	   p.model_year,
	   format(p.list_price,'$ #,#.00') '구매가격(달러)'
  from production.products p
 inner join production.categories c
	on p.category_id = c.category_id
 inner join production.brands b
    on p.brand_id = b.brand_id
 order by list_price desc;--비싼순

--
select o.order_id,concat(c.first_name,' ',c.last_name) '고객 성함',
	   case o.order_status
		when 1 then '주문완료'
		when 2 then '결제완료'
		when 3 then '배송전'
		when 4 then '배송완료'
		else '에러발생'
	   end 주문현황,
	   o.order_date,o.required_date,o.shipped_date,sr.store_name 점포이름,concat(s.first_name,' ',s.last_name) '점원 이름'
  from sales.orders o
 inner join sales.customers c
    on o.customer_id = c.customer_id
 inner join sales.staffs s
    on o.staff_id = s.staff_id
 inner join sales.stores sr
    on o.store_id = sr.store_id;