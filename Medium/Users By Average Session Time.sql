select USER_ID , Avg(SESSION_DURATION) as AVG_SESSION_DURATION
from ( select USER_ID ,( CAST(MIN(CASE WHEN ACTION = 'page_exit' THEN TIMESTAMP END) AS DATE) - 
             CAST(MAX(CASE WHEN ACTION = 'page_load' THEN TIMESTAMP END) AS DATE) ) * 86400 AS SESSION_DURATION
from facebook_web_log 
where ACTION = 'page_load' OR ACTION = 'page_exit'
group by USER_ID , TRUNC(TIMESTAMP)
)
WHERE SESSION_DURATION > 0
group by USER_ID ;