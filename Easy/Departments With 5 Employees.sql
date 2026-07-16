select DEPARTMENT
from employee 
group by DEPARTMENT 
having count(*)>=5