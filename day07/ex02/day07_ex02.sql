with idCTE as(
	(select pv.pizzeria_id, count(*), 'visit' as action_type
	from person_visits pv
	group by pv.pizzeria_id
	order by count desc limit 3)
	union all
	(select m.pizzeria_id, count(*), 'order' as action_type
	from person_order po 
	join menu m on m.id = po.menu_id
	group by m.pizzeria_id 
	order by count desc limit 3)
	
)
select p.name,
	idCTE.count,
	idCTE.action_type
from idCTE
join pizzeria p on p.id = idCTE.pizzeria_id
order by action_type asc, count desc
	