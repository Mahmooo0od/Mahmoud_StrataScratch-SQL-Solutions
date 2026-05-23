select c.ID ,FIRST_NAME,sum(TOTAL_ORDER_COST) as TOTAL_ORDER_COST
from customers c, orders o
where c.ID=o.CUST_ID 
group by c.ID ,FIRST_NAME 
order by FIRST_NAME