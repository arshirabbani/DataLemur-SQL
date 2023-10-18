--Median Google Search Frequency-

with cte as (  
select searches, num_users, GENERATE_SERIES(1, num_users)
from search_frequency)
select 
round(PERCENTILE_CONT(0.50) WITHIN GROUP (order by searches):: DECIMAL,1)
from cte