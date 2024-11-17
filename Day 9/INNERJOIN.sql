--JOIN
--INNER JOIN
SELECT payment_id,
payment.customer_id,
first_name,
last_name
FROM payment
INNER JOIN customer
ON payment.customer_id=customer.customer_id


SELECT payment.*, first_name,last_name FROM payment
INNER JOIN staff
ON staff.staff_id=payment.staff_id
WHERE payment.staff_id =1



--challenge
-- how many ppl choose seat in category
-- business,sconomy,comfort
--join 3 table ->
-- seats,boarding passes,flights

SELECT
s.fare_conditions, COUNT(*)
FROM boarding_passes bp
INNER JOIN flights f
ON f.flight_id=bp.flight_id

INNER JOIN seats s ON
s.aircraft_code=f.aircraft_code AND
bp.seat_no =s.seat_no
GROUP BY 
s.fare_conditions
ORDER BY 2 DESC



