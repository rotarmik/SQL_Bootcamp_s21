select name, rating
from (
	select pizzeria.name, pizzeria.rating, person_visits.id
	from  pizzeria 
	left join person_visits 
	on person_visits.pizzeria_id = pizzeria.id) as temp
where (id is NULL)