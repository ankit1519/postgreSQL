--intervals and timestamps
SELECT CURRENT_TIMESTAMP,
rental_date,
CURRENT_DATE,
CURRENT_TIMESTAMP-rental_date,
EXTRACT(Day from return_date-rental_date)
FROM rental

--challenge 1
--rental duration of customer with id 35
SELECT
customer_id,
return_date-rental_date 
FROM rental
WHERE customer_id=35
--which cust has longest avf rental duration
SELECT
customer_id,
AVG(return_date-rental_date) as x
FROM rental
GROUP BY customer_id
ORDER BY x DESC

