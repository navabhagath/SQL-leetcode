# Write your MySQL query statement below
select distinct customer_id
from Customer c
join Product p
on c.product_key = p.product_key
where p.product_key IS NOT NULL 
group by customer_id
having count(distinct c.product_key) = (select count(*) from Product)