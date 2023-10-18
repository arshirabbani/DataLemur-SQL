--Alibaba Compressed Mode--

select item_count as mode 
from items_per_order
where order_occurrences in 
(select max(order_occurrences) from items_per_order)
order by mode ;