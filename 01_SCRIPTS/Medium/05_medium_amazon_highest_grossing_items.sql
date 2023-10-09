--Highest-Grossing Items--

with cte as (select category,product,
sum(spend) as total_spend ,
dense_rank()over(partition by category order by sum(spend) desc) as rn
from product_spend
where date_part('year', transaction_date) = 2022
group by category,product)
select category,product,total_spend
from cte where rn<=2
order by category,total_spend desc
