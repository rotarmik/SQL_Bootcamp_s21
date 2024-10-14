insert into person_visits  (id, person_id, pizzeria_id, visit_date)
values (
	(select max(id) from person_visits)+1, 
	(select id from person where name like 'Dmitriy'),
	(select distinct pz.id from pizzeria pz
		join mv_dmitriy_visits_and_eats dv on dv.pizzeria_name <> pz.name
		join menu mn on mn.pizzeria_id = pz.id
		where mn.price < 800 limit 1),
		'2022-01-08'
);
refresh materialized view mv_dmitriy_visits_and_eats;