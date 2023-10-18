--Cards Issued Difference--

select card_name,
max(issued_amount)- min(issued_amount) as difference
from monthly_cards_issued 
group by card_name
order by difference desc