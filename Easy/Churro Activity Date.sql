select ACTIVITY_DATE ,PE_DESCRIPTION
from los_angeles_restaurant_health_inspections  
where FACILITY_NAME='STREET CHURROS' and SCORE<95
