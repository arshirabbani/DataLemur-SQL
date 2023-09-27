-- cities with completed trades -- 

SELECT city, 
count( order_id) as completed_order
from trades t
inner join users u   
on u.user_id = t.user_id
where status = 'Completed'
group by city
order by completed_order DESC
limit 3;

