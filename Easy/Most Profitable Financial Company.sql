select *
from(select COMPANY ,CONTINENT
     from forbes_global_2010_2014 
     where SECTOR='Financials' 
     order by RANK) 
where ROWNUM=1