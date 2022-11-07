-- cities with completed trades -- 

select 
  u.city, 
  count(order_id) as total_orders 
from 
  trades t 
  inner join users u on t.user_id = u.user_id 
where 
  t.status = 'Completed' 
group by 
  city 
order by 
  total_orders desc 
limit 
  3;
