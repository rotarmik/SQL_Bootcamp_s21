select distinct
	menu1.pizza_name,
	pz1.name as pizzeria_name_1,
	pz2.name as pizzeria_name_2,
	menu1.price
from menu menu1
	join menu menu2 on menu1.price = menu2.price
	join pizzeria pz1 on menu1.pizzeria_id = pz1.id
	join pizzeria pz2 on menu2.pizzeria_id = pz2.id
where 
	menu1.id > menu2.id and pz1.name <> pz2.name
order by menu1.pizza_name
	


