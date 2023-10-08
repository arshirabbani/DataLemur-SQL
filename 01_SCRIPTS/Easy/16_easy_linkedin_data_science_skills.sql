--Data Science Skills--

with cte as (
select candidate_id,
sum(case when skill = 'Python' then 1
when skill = 'Tableau' then 1
when skill = 'PostgreSQL' then 1
else 0 end ) as skill_count
FROM candidates
group by 
candidate_id)
select candidate_id from cte where skill_count =3
order by candidate_id asc
