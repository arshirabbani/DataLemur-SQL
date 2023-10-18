-- Repeated Payments --

with cte as (SELECT 
merchant_id, credit_card_id, amount,transaction_timestamp,
lag (transaction_timestamp) over 
(PARTITION BY merchant_id, credit_card_id, amount 
order by transaction_timestamp) as previous_timestamp
FROM transactions)
select count(merchant_id) as payment_count
from cte 
where 
EXTRACT( EPOCH from transaction_timestamp - previous_timestamp)/60<=10