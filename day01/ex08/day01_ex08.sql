select order_date, 
	(select 
	concat(name, ' (', 'age:', tmp.age, ')') 
	)as person_information 
from person_order po 
natural join 
	(select id as person_id, name, age from person) as tmp
order by order_date, person_information asc