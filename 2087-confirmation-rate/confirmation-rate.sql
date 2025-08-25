# Write your MySQL query statement below
select s.user_id,round(IFNULL(SUM(IF(c.action='confirmed',1,0))/count(c.user_id),0),2) AS confirmation_rate
from Signups s
left join Confirmations c
on s.user_id=c.user_id
group by s.user_id