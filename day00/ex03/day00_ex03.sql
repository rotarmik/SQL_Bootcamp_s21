select distinct 
	person_id 
from 
	person_visits pv 
where 
	visit_date  >=  '2022-01-06' and visit_date  <= '2022-01-09' or pizzeria_id = 2 
order by 
	person_id desc
