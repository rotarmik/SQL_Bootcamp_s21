with forgotten_pizza as 
	(select menu.id as menu_id
	from menu 
	left join person_order on person_order.menu_id = menu.id  
	where person_order.person_id is null
	order by menu.id)
select menu.pizza_name, 
	menu.price , 
	pizzeria.name as pizzeria_name
from forgotten_pizza
join menu on menu.id = forgotten_pizza.menu_id
join pizzeria on menu.pizzeria_id = pizzeria.id 
order by pizza_name, price
