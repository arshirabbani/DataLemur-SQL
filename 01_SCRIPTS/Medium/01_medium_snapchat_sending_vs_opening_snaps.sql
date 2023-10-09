--Sending vs. Opening Snap--

with cte as (select age_bucket,
case when activity_type = 'send' then time_spent else 0 end send_time,
case when activity_type = 'open' then time_spent else 0 end open_time
from activities a
inner join age_breakdown ab on a.user_id = ab.user_id)
select age_bucket,
round(100.0*sum(send_time)/(sum(send_time)+sum(open_time)),2) as send_perc,
round(100.0*sum(open_time)/(sum(send_time)+sum(open_time)),2) as open_perc
from cte
GROUP BY age_bucket
