--HAVING

SELECT
customer_id,
SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount)>200

--challenge
--28 29 30 apr were high revenue date
--focus on them
-- find avg payment amount grped by
   -- customer and day (More than 1 day)
 -- order by avg amt desc

SELECT 
customer_id,
DATE(payment_date)as d,
ROUND(AVG(amount),2) as avg_amt,
COUNT(*) as cnt
FROM payment
WHERE payment_date BETWEEN
'2020-04-28' AND '2020-04-30 23:59'
GROUP BY customer_id,d
having count(*)>1
ORDER BY avg_amt desc