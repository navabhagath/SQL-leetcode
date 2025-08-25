# Write your MySQL query statement below
SELECT s.product_id, s.year AS first_year, s.quantity, s.price
FROM Sales s
join (
    select product_id , MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id
    )t
on s.product_id = t.product_id AND s.year = t.first_year