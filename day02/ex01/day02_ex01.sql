select day::date as missing_date
from generate_series(timestamp '2022-01-01',
					timestamp '2022-01-10',
					interval '1 day') as day
full join
	(select * from person_visits 
	where person_id = 1 or person_id = 2
	and visit_date between '2022-01-01' AND '2022-01-10') as temp
on day = temp.visit_date
where temp.id is null
order by day asc 