create view v_person_female as 
	select * from person p 
		where p.gender = 'female';

create  view v_person_male as
	select * from person p 
		where gender = 'male';