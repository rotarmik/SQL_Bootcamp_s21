select 
	p.address,
	pzz.name as name,
	count(*) as count_of_orders
from person p
join person_order po on p.id = po.person_id 
join menu ON po.menu_id = menu.id
join pizzeria pzz ON menu.pizzeria_id = pzz.id
group by pzz.name, p.address
order by address , name