# Write your MySQL query statement below
select max(num) AS num
from (select num
        from MyNumbers
        group by num
        having count(num) = 1
        ) AS temp_table