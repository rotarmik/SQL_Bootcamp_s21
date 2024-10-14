select order_date, 
	(select 
	concat(name, ' (', 'age:', p.age, ')') 
	)as person_information 
from person_order po 
inner join person p 
on p.id = po.person_id 
order by order_date, person_information asc