select extract(year from INSPECTION_DATE ) INSPECTION_YEAR , count(VIOLATION_ID) N_VIOLATIONS
from sf_restaurant_health_violations 
where BUSINESS_NAME='Roxanne Cafe' 
group by extract(year from INSPECTION_DATE ) 
order by INSPECTION_YEAR asc