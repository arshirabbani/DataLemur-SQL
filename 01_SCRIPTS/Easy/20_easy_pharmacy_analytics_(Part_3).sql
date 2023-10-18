--Pharmacy Analytics (Part 3)--

select manufacturer, 
concat('$', round(sum(total_sales/1000000)), ' million') as sales_mil
from pharmacy_sales
group by manufacturer
order by sum(total_sales) desc