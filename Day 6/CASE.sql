--CASE WHEN
SELECT
	COUNT(*),
CASE
	WHEN actual_departure is null THEN 'no depart time'
	WHEN actual_departure-scheduled_departure<'00:05'
		THEN 'on time'
	WHEN actual_departure-scheduled_departure<'01:00'
		THEN 'little late'
	ELSE 'too late'
END AS con
FROM flights
GROUP BY con

-- --challenge 1
-- how many ticket sold in foll categ
-- <20k - low price ticket
-- 20k-150k - mid price
-- else high price

SELECT COUNT(*),
CASE
WHEN total_amount<20000 THEN 'low price ticket'
WHEN total_amount<150000 THEN 'mid price ticket'
ELSE 'high price ticket'
END AS tp
FROM bookings
GROUP BY tp

