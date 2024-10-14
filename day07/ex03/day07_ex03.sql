with visits as (
    select pv.pizzeria_id, count(*) as visit_count, 'visit' as action_type
    from person_visits pv
    group by pv.pizzeria_id
    order by visit_count desc
),
orders as (
    select m.pizzeria_id, count(*) as order_count, 'order' as action_type
    from person_order po 
    join menu m on m.id = po.menu_id
    group by m.pizzeria_id 
    order by order_count desc 
)
select pizzeria.name,
	(visit_count + order_count) as total_count
from visits
join orders on visits.pizzeria_id = orders.pizzeria_id
join pizzeria on visits.pizzeria_id = pizzeria.id
order by total_count desc, name asc