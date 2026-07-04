select ARTIST ,count(*) N_OCCURENCES
from spotify_worldwide_daily_song_ranking 
group by ARTIST  
order by N_OCCURENCES desc