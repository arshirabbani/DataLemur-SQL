-- Card Launch Success--

with cte as (
select issue_month, card_name, issued_amount,
dense_rank() over(partition by card_name order by issue_year, issue_month ) as rn
from monthly_cards_issued)
select card_name, issued_amount from cte
where rn = 1 order by issued_amount desc