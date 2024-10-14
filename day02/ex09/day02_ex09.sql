with cte_first_slice as( 
	(select name from person p
	join person_order po on p.id = po.person_id 
	join menu m on po.menu_id = m.id 
	where p.gender = 'female'
		and m.pizza_name = 'pepperoni pizza')
), 
	cte_second_slice as (
	(select name from person p
	join person_order po on p.id = po.person_id 
	join menu m on po.menu_id = m.id 
	where p.gender = 'female'
		and m.pizza_name = 'cheese pizza')
)
select * from cte_first_slice
intersect
select * from cte_second_slice