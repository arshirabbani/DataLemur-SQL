--Facebook Advertiser Status--

select  user_id,
case 
when paid is null then 'CHURN'
when paid is not null and status in ('NEW','EXISTING','RESURRECT') then 'EXISTING'
when paid is not null and status = 'CHURN' then 'RESURRECT' 
when paid is not null and status is null then 'NEW' end  as new_status
from advertiser a
FULL OUTER JOIN daily_pay dp using (user_id)
order by user_id
;