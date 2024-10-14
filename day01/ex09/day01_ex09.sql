select name from pizzeria p 
where not exists (
	select * from person_visits pv
	where p.id = pv.pizzeria_id)
	
select name from pizzeria p 
where id not in 
	(select pizzeria_id from person_visits pv)