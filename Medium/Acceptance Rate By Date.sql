with s as (
select * 
from fb_friend_requests 
where ACTION ='sent') ,
a as(
select *
from fb_friend_requests 
where ACTION ='accepted') 

------------------------------------------

select s."date" , count(a.USER_ID_SENDER)/count(s.USER_ID_SENDER) as PERCENTAGE_ACCEPTANCE
from s left join a on s.USER_ID_SENDER=a.USER_ID_SENDER and s.USER_ID_RECEIVER=a.USER_ID_RECEIVER 
group by s."date"