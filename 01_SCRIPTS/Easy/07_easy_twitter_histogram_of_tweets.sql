-- histogram of tweets --

with cte as (
  select 
    user_id, 
    count(1) as tweet_bucket 
  from 
    tweets 
  where 
    date_part('year', tweet_date) = 2022 
  group by 
    user_id
) 
select 
  tweet_bucket, 
  count (1) as user_count 
from 
  cte 
group by 
  tweet_bucket 
order by 
  tweet_bucket asc

