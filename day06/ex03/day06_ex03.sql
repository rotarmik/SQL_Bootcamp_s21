create unique index if not exists idx_person_discounts_unique on person_discounts(person_id, pizzeria_id);

set enable_seqscan to off;
explain analyze 
select * from person_discounts pd 
where person_id = 1 and pizzeria_id = 1