create index if not exists idx_person_order_multi on person_order(person_id, menu_id, order_date);
set enable_seqscan to off;
explain analyze
select person_id, menu_id, order_date from person_order 
where person_id = 4 and menu_id = 7