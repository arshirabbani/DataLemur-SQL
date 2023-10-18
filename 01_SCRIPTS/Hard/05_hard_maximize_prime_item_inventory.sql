--Maximize Prime Item Inventory--

with cte as (select 
sum(case when item_type = 'prime_eligible' then 1 else 0 end) as p_cnt,
sum(case when item_type = 'prime_eligible' then square_footage end) as p_square,
sum(case when item_type = 'not_prime' then 1 else 0 end) as np_cnt,
sum(case when item_type = 'not_prime' then square_footage end) as np_square
from inventory)
select 'prime_eligible' as item_type,
trunc(500000/p_square) * p_cnt as item_count
from cte
UNION ALL
select 'not_prime' as item_type,
trunc((500000 - trunc(500000/p_square) * p_square)/np_square) * np_cnt as item_count
from cte