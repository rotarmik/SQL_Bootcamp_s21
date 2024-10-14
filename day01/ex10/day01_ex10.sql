select 
	(select name from person where id = person_order.person_id) as person_name,
	(select pizza_name from menu where id = person_order.menu_id) as pizza_name,
	(select name from pizzeria where id = menu.pizzeria_id) as pizzeria_name
from person_order
join person on person.id = person_order.person_id 
join menu on menu.id = person_order.menu_id 
order by person_name, pizza_name, pizzeria_name asc