select EVENT_NAME ,count(*) EVENT_COUNT
from playbook_events 
where DEVICE='macbook pro' 
group by EVENT_NAME 
order by EVENT_COUNT