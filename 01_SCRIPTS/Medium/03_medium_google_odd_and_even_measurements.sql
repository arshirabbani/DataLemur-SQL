--Odd and Even Measurements--

with cte as (SELECT 
date(measurement_time) as measurement_day,
measurement_value,measurement_time,
row_number()over(PARTITION BY date(measurement_time) order by measurement_time) as rn
FROM measurements)
select measurement_day,
sum(case when rn%2=1 then measurement_value else 0 end) as add_sum,
sum(case when rn%2=0 then measurement_value else 0 end) as even_sum
from cte
group by measurement_day
