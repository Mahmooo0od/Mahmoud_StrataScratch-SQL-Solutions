select to_char(SHIPMENT_DATE,'YYYY-MM') YEAR_MONTH ,count(distinct SHIPMENT_ID||sub_id ) COUNT
from amazon_shipment
group by to_char(SHIPMENT_DATE,'YYYY-MM')