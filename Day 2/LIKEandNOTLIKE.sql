--LIKE
SELECT * FROM actor
WHERE first_name LIKE 'A%'

--ILIKE - case insensitive
SELECT * FROM actor
WHERE first_name ILIKE 'a%'


SELECT * FROM actor
WHERE first_name LIKE '%A%'  --anywhere

-- _
SELECT * FROM actor
WHERE first_name LIKE '_A%'


--NOT LIKE
SELECT * FROM actor
WHERE first_name NOT LIKE 'A%'


