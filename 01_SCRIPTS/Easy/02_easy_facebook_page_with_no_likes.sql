-- facebook page with no likes --

select 
  page_id 
from 
  pages 
where 
  page_id not in (
    select 
      page_id 
    from 
      page_likes
  ) 
order by 
  page_id asc
