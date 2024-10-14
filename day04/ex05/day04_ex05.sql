create view v_price_with_discount as (
	select p.name,
		m.pizza_name,
		m.price, 
		cast ( m.price-m.price*0.1 as INTEGER) as dicount_price
	from person_order po 
	left join person p on p.id = po.person_id
	left join menu m on m.id = po.menu_id
	order by p.name, m.pizza_name
);