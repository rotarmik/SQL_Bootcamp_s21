select p.name, m.pizza_name, m.price, 
	round(m.price* (1 - pd.discount/100)) as discount_price,
	p2.name as pizzeria_name
from person_order po 
join person p on p.id = po.person_id 
join menu m on m.id = po.menu_id 
join person_discounts pd on pd.person_id = p.id and pd.pizzeria_id = m.pizzeria_id 
join pizzeria p2 on p2.id = m.pizzeria_id 
order by 1,2