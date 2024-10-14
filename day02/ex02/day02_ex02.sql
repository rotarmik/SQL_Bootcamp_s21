select 
	coalesce (person.name, '-') as person_name,
	visit_date, 
	coalesce (pizzeria.name, '-') as pizzeria_name
from
	(select * from person_visits pv 
	where visit_date between '2022-01-01' and '2022-01-03') as temp
full join pizzeria on temp.pizzeria_id = pizzeria.id
full join person on person.id = temp.person_id
order by person_name, visit_date, pizzeria_name