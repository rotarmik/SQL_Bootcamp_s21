select id as object_id, pizza_name as object_name from menu m 
UNION
select id as object_id, name as object_name from person p 
order by object_id, object_name