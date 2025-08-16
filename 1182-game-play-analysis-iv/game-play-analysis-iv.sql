# Write your MySQL query statement below
select round( count(distinct a.player_id) / 
                (select count(distinct c.player_id) from Activity c) , 2) AS fraction
from Activity a
join (
    select player_id , min(event_date) AS login
    from Activity
    group by player_id
) b on a.player_id = b.player_id
where datediff(a.event_date , b.login) = 1;