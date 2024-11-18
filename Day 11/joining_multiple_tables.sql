--joining multiple table
-- for every ticket give name and scheduled_departure
--passenger name is in tickets table

SELECT * FROM tickets
SELECT * FROM flights
SELECT * FROM ticket_flights


--we can join tickets and ticket_flights bcz both has
-- ticket_no in common

SELECT passenger_name,scheduled_departure
from tickets t
INNER JOIN ticket_flights tf
ON t.ticket_no=tf.ticket_no
INNER JOIN flights f
ON tf.flight_id=f.flight_id





--challenge
--who are the customers from brazil. give firstname , lastname,
-- email,country
SELECT first_name,last_name,email,country
FROM customer c
LEFT JOIN address a
ON a.address_id=c.address_id
LEFT JOIN city ci
ON ci.city_id=a.city_id
LEFT JOIN country co
ON co.country_id = ci.country_id
WHERE country='Brazil'