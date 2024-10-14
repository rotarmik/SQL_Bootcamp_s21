with temp as 
	(select person_id, pizza_name, pizzeria_id from		
		(select person_id, pizza_name, price, pizzeria_id
		from person_order 
		left join menu on menu.id = person_order.menu_id) as initial_struct)
select pizza_name, pizzeria.name as pizzeria_name
from temp
inner join person on person.id = temp.person_id
inner join pizzeria on pizzeria.id = temp.pizzeria_id 
where person.name in ('Denis', 'Anna')
order by 1, 2

