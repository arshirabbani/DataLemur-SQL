--Average Review Ratings--

select date_part('month', submit_date) as month_num,
product_id,
round(avg(stars),2) as avg_stars
from reviews
group by date_part('month', submit_date), product_id
order by month_num, product_id
