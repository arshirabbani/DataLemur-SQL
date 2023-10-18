--International Call Percentage--

with cte as (
SELECT count(phone.caller_id) as total_calls,
sum(case when caller1.country_id != reciever.country_id then 1 else 0 end) as int_calls
FROM phone_calls as phone
inner join phone_info as caller1 on  caller1.caller_id = phone.caller_id
inner join phone_info as reciever on  reciever.caller_id = phone.receiver_id )
select round((100.0* int_calls/ total_calls),1)
from cte