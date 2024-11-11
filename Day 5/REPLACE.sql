SELECT
flight_no,
	REPLACE(flight_no,'PG','')
FROM flights

--remove whitespace from passenger id
--and make it bigint
SELECT
	CAST(REPLACE(passenger_id,' ','') AS bigint)
FROM tickets