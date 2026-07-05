select TRACKNAME ,count(*) TIMES_TOP1
from spotify_worldwide_daily_song_ranking
where POSITION=1 
group by TRACKNAME 
order by TIMES_TOP1