with groupedCTE as (
	select person_id ,pizzeria_id ,count(person_id) as orders_amount
	from person_order po 
	join menu m on po.menu_id = m.id
	group by person_id, pizzeria_id
)
insert into person_discounts (id, person_id, pizzeria_id, discount)
select 
	row_number() over() as id,
	person_id,
	pizzeria_id,
	case when orders_amount = 1 then 10.5
		when orders_amount =2 then 22
		else 30
	end discount 
from groupedCTE;