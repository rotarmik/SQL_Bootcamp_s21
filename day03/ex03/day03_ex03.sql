select name as pizzeria_name from (
	(select p.name, count(person.gender) as cnt_male from pizzeria p 
	join person_visits pv on pv.pizzeria_id = p.id
	join person on person.id = pv.person_id 
	where person.gender = 'male'
	group by p.name)
	except all
	(select p.name, count(person.gender) as cnt_female from pizzeria p 
	join person_visits pv on pv.pizzeria_id = p.id
	join person on person.id = pv.person_id 
	where person.gender = 'female'
group by p.name)) as foo
order by pizzeria_name





