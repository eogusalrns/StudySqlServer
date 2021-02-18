select d.names, sum(price) as 'ÃÑÇÕ°è±Ý¾×'
  from bookstbl as b
 inner join divtbl as d
    on b.Division = d.Division
 group by rollup(d.Names);