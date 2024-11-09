--group by multiple column

SELECT
staff_id,
customer_id,
SUM(amount),
count(*)
FROM payment
GROUP BY staff_id,customer_id
ORDER BY COUNT(*) DESC

--challenge
--which staff has highest amount payment 
   --in single day
 -- most number of payment
SELECT
staff_id,
DATE(payment_date),
SUM(amount),
COUNT(*)
FROM payment
GROUP BY staff_id,DATE(payment_date)
 