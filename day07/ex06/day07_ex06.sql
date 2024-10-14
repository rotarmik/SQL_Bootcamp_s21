select pzz.name,
	count (*) as count_of_orders,
	round(avg(m.price), 2) as average_price,
	max(m.price) as max_price,
	min(m.price) as min_price
from menu m 
join person_order po on po.menu_id = m.id
join pizzeria pzz on pzz.id = m.pizzeria_id 
group by pzz.name
order by name