SELECT
COUNT(first_name)
FROM actor

SELECT
COUNT(*)
FROM actor

SELECT
COUNT(DISTINCT first_name)
FROM actor


--Multiple columns
SELECT DISTINCT
first_name,
last_name
FROM actor
ORDER BY first_name
