--App Click-through Rate--

SELECT app_id,
round((sum(case when event_type = 'click' then 1.0 else 0.0 end)/
sum(case when event_type = 'impression' then 1.0 else 0.0 end))*100,2) as CTR
FROM events
where date_part('year', timestamp) = 2022
group by app_id
