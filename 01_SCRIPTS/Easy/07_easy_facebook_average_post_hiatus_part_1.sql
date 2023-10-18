-- average post hiatus --

select user_id,
max(post_date::date)- min(post_date::date) as no_of_days
from posts
where date_part('year', post_date)= 2021
group by user_id
having count(post_id)>1
