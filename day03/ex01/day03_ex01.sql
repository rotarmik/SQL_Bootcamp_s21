select menu.id as menu_id
from menu 
left join person_order on person_order.menu_id = menu.id  
where person_order.person_id is null
order by menu.id