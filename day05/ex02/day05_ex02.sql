create index if not exists idx_person_name on person(UPPER(name));
set enable_seqscan to off;
explain analyse
	select name from person
	where UPPER(person.name) = 'ELVIRA';

