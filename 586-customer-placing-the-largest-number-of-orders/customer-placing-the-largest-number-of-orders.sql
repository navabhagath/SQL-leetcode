# Write your MySQL query statement below
select customer_number
FROM Orders
GROUP BY customer_number
ORDER BY count(customer_number) DESC, order_number
limit 1