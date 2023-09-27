--Teams Power Users--

select sender_id,
count(message_id) as number_of_message
from messages
where DATE_PART('year', sent_date) = 2022
and DATE_PART('month', sent_date) = 8
group by sender_id
order by number_of_message DESC
limit 2;
