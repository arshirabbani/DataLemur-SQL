--Top 5 Artists--

with cte as (select artist_name, 
count(gsr.song_id) as song_cnt,
dense_rank() OVER(order by count(gsr.song_id) desc) as artist_rank
from global_song_rank gsr
inner join songs as s on gsr.song_id = s.song_id
inner join artists as a on s.artist_id = a.artist_id
where rank <= 10
group by artist_name
ORDER BY song_cnt desc)
select artist_name, artist_rank
from cte where artist_rank <=5
