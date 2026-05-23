select ID ,FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY
from(select ID ,FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY ,Row_Number() over(partition by ID order by SALARY desc) as RN from ms_employee_salary)
where RN=1 
order by ID