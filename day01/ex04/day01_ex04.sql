select person_id as order_date
from person_order po 
where (order_date='2022-01-07')
except all
select person_id as visit_date
from person_visits pv 
where (visit_date='2022-01-07')
