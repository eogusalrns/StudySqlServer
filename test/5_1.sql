select d.names, sum(price) as '���հ�ݾ�'
  from bookstbl as b
 inner join divtbl as d
    on b.Division = d.Division
 group by rollup(d.Names);