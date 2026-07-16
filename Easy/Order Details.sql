select FIRST_NAME , ORDER_DATE , ORDER_DETAILS , TOTAL_ORDER_COST
from customers c inner join orders o on c.ID=CUST_ID 
where FIRST_NAME='Jill' or FIRST_NAME='Eva'  
order by c.ID asc