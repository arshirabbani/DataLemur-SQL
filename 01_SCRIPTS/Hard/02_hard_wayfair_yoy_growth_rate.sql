--Y-on-Y Growth Rate--

with spend as (select date_part('year', transaction_date) as year,
product_id,
spend as curr_year_spend,
lag(spend,1) over(PARTITION BY product_id order by transaction_date) as prev_year_spend
from user_transactions)
select *,
round(((curr_year_spend/prev_year_spend)-1)*100.0,2) as YoY_rate
from spend
