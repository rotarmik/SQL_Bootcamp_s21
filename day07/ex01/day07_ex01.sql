select person.name, 
	count(person_visits.pizzeria_id) as count_of_visits
from person 
join person_visits on person_visits.person_id = person.id 
group by person.id
order by count_of_visits desc, name asc
limit 4