--Microsoft Supercloud Customer--

select customer_id
from customer_contracts c
left join  products p on c.product_id = p.product_id
group by customer_id
having count( distinct product_category) =
(select count(distinct product_category) from products)

