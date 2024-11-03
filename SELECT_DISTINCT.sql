SELECT DISTINCT
column_name1
FROM table_name

SELECT DISTINCT
first_name
FROM actor


--distinct and order by
SELECT DISTINCT
first_name
FROM actor
ORDER BY first_name

--Multiple columns
SELECT DISTINCT
first_name,
last_name
FROM actor
ORDER BY first_name

SELECT
first_name,
last_name
FROM actor
ORDER BY first_name, last_name
