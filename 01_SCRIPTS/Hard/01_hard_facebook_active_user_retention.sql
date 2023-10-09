--Active User Retention--

select date_part('month', event_date),
count(distinct user_id) as monthly_user
FROM user_actions 
where date_part('year', event_date) = 2022
and date_part('month', event_date) = 7
and event_type in ('sign-in','like','comment')
and user_id in (select distinct user_id from user_actions where date_part('month', event_date) = 6)
group by date_part('month', event_date)
