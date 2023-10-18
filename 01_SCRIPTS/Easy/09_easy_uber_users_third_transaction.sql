--User's Third Transaction--

with cte as (select user_id,
spend,
transaction_date,
DENSE_RANK()OVER(PARTITION BY user_id order by transaction_date asc) as rn
from transactions)
select 
user_id,
spend,
transaction_date
from cte where rn = 3
