--right outer join
--find aircraft with no flight

SELECT * FROM flights f
RIGHT JOIN aircrafts_data a
ON a.aircraft_code=f.aircraft_code

-- check if any aircraft with flight allocation
SELECT * FROM flights f
RIGHT JOIN aircrafts_data a
ON a.aircraft_code=f.aircraft_code
WHERE f.aircraft_code is null

--challenges
--a company wants to run a phone call campaign on
-- all customer in texas
-- what are the customers
-- (first name, last name, phone no. and their district)


SELECT first_name,last_name,phone,district
FROM customer c
LEFT JOIN address a
ON c.address_id=a.address_id

--for district texas
SELECT first_name,last_name,phone,district
FROM customer c
LEFT JOIN address a
ON c.address_id=a.address_id
WHERE district='Texas'

--are there any old addresses not related to any customer

SELECT COUNT(*)
FROM address a
LEFT JOIN customer c
ON c.address_id=a.address_id
WHERE c.address_id is null
