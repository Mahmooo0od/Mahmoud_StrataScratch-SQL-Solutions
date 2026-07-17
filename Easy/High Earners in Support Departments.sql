select FIRST_NAME ,LAST_NAME,DEPARTMENT ,SALARY
from techcorp_workforce 
where SALARY>80000 and (DEPARTMENT='HR' or DEPARTMENT='Admin')