select pizzeria.name from person_visits pv 
inner join person on pv.person_id = person.id 
join menu on pv.pizzeria_id = menu.pizzeria_id 
join pizzeria on menu.pizzeria_id = pizzeria.id
where person."name" = 'Dmitriy' 
		and pv.visit_date ='2022-01-08' and menu.price < 800
	