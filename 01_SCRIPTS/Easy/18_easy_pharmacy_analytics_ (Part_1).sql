--Pharmacy Analytics (Part 1)--

select drug,
(total_sales - cogs) as total_profit
from pharmacy_sales
order by total_profit desc
limit 3