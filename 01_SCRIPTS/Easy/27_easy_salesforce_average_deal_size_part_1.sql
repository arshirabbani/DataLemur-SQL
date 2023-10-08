--Average Deal Size--

select 
round(avg(num_seats * yearly_seat_cost),2) as average_deal_size
from contracts
