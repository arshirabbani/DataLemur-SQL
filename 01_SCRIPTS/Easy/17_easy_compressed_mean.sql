--Compressed Mean--

select 
round(sum(item_count * order_occurrences):: decimal/sum(order_occurrences):: decimal,1)
from items_per_order 