--Extract
--used to extract parts of timestamp/date

SELECT
EXTRACT(MONTH from rental_date) AS month,
COUNT(*) as sales
FROM rental
GROUP BY EXTRACT(MONTH from rental_date)
ORDER BY COUNT(*) DESC


--challenge 1
-- month with highest payment amount

SELECT EXTRACT(month from payment_date),
SUM(amount) AS total_amount
FROM payment
GROUP BY EXTRACT(month from payment_date)
ORDER BY SUM(amount) DESC


--challenge 2
--dow with highest payment amt
SELECT EXTRACT(dow from payment_date) as week_date,
SUM(amount) AS total_amount
FROM payment
GROUP BY week_date
ORDER BY SUM(amount) DESC




--challenge 3
--customer made highest amount per week
SELECT customer_id, 
EXTRACT(week from payment_date) AS week_of_day,
SUM(amount) AS total_amount
FROM payment
GROUP BY week_of_day, customer_id
ORDER BY SUM(amount) DESC
