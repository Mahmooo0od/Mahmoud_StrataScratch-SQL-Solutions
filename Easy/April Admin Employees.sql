select count(DEPARTMENT) N_ADMINS
from worker 
where extract(month from JOINING_DATE)>=4 and DEPARTMENT='Admin'