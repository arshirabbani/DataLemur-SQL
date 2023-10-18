--Pharmacy Analytics (Part 2)--

select manufacturer, count(drug) as drug_count,
sum(cogs -total_sales ) as total_loss
from pharmacy_sales
where total_sales < cogs
group by manufacturer
order by total_loss desc;