select distinct NAME
from olympics_athletes_events 
where ( MEDAL='Bronze' or MEDAL='Silver' ) and AGE>=40