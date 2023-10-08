--Histogram of Users and Purchases--

with cte as (select user_id,
transaction_date,
count(product_id) as purchase_count,
dense_rank()over(partition by user_id order by transaction_date desc)
as rn
from user_transactions
group by transaction_date, user_id)
select  transaction_date,user_id,purchase_count
from cte
where rn =1
ORDER BY transaction_date asc
