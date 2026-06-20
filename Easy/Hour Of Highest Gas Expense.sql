select HOUR
from (select HOUR , sum(GASOLINE_COST)
      from lyft_rides
      group by HOUR
      order by sum(GASOLINE_COST)) 
where ROWNUM=1