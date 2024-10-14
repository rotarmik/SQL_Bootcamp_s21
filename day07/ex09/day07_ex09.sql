select address,
	round(max(age) - (min(age)/max(age::numeric)), 2)as formula,
	round(avg(age), 2) as average,
	case when max(age) - (min(age)/max(age::numeric)) > avg(age)
		then true
		else false
	end comparison
from person p
group by address
order by address 