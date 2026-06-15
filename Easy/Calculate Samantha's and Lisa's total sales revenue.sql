select sum(SALES_REVENUE) TOTAL_REVENUE
from sales_performance 
where SALESPERSON='Samantha' or SALESPERSON='Lisa'