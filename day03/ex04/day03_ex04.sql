(select p.name as pizzeria_name 
	from menu m 
		join pizzeria p on p.id = m.pizzeria_id 
		join person_order po on m.id = po.menu_id 
		join person on person.id = po.person_id 
	where person.gender = 'female'
	except 
	select p.name as pizzeria_name 
	from menu m 
		join pizzeria p on p.id = m.pizzeria_id 
		join person_order po on m.id = po.menu_id 
		join person on person.id = po.person_id 
	where person.gender = 'male')
	union 
(select p.name as pizzeria_name 
	from menu m 
		join pizzeria p on p.id = m.pizzeria_id 
		join person_order po on m.id = po.menu_id 
		join person on person.id = po.person_id 
	where person.gender = 'male'
	except 
	select p.name as pizzeria_name 
	from menu m 
		join pizzeria p on p.id = m.pizzeria_id 
		join person_order po on m.id = po.menu_id 
		join person on person.id = po.person_id 
	where person.gender = 'female')
order by pizzeria_name
	
	
		

