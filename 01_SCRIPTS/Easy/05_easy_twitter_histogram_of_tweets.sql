--Histogram of Tweets--

with cte AS
(SELECT user_id,
count (tweet_id) as tweet_bucket
from tweets 
where date_part ( 'year', tweet_date)= 2022
GROUP BY user_id
)

select tweet_bucket, COUNT(1) as user_num
from cte 
GROUP BY tweet_bucket;
