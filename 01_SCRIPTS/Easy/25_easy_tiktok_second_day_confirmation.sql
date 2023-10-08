--Second Day Confirmation-

select user_id
from emails e
inner join texts t on e.email_id = t.email_id
where signup_action = 'Confirmed'
and date_part('day', action_date - signup_date) = 1 
