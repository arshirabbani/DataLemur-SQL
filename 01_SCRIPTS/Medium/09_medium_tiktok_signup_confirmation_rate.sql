--Signup Activation Rate--

select
round(1.0 * sum(case when signup_action = 'Confirmed' then 1 else 0 end)/ count(signup_action),2) as activation_rate
from emails e LEFT JOIN texts t
on e.email_id = t.email_id
where signup_action IS NOT NULL
