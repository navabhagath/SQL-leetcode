# Write your MySQL query statement below
SELECT x,y,z,case
                when x+y>z AND y+z>x AND z+x>y then 'Yes'
                else 'No'
                end
                 AS triangle
FROM Triangle