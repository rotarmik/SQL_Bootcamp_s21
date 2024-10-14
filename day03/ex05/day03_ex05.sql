(select p.name as pizzeria_name from pizzeria p
join person_visits pv on pv.pizzeria_id = p.id
join person p2 on p2.id = pv.person_id 
where p2.name = 'Andrey')
except
(select p.name from menu m
join pizzeria p on p.id = m.pizzeria_id 
join person_order po on po.menu_id = m.id
join person p2 on p2.id = po.person_id 
where p2.name = 'Andrey')
order by pizzeria_name