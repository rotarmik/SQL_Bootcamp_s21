select * from person_order po 
where mod(po.id, 2) = 0
order by po.id