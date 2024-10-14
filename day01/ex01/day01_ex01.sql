(select pizza_name as object_name from menu m 
order by pizza_name)
union ALL
(select name as object_name from person p 
order by name)
