select 
    (select name from person p where p.id = po.person_id) as NAME,
    case 
        when exists (
            select 1 
            from person p 
            where p.id = po.person_id and p.name = 'Denis'
        ) then true 
        else false 
    end as check_name
from person_order po 
where (po.menu_id = 13 or po.menu_id = 14 or po.menu_id = 18) 
and po.order_date = '2022-01-07'


	

	