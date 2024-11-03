--Used to LIMIT the number of rows in the output
--✓ Always at the very end of your query
--✓ Can help to get a quick idea about a table

SELECT
column_name1,
column_name2
FROM table_name
LIMIT n

SELECT
first_name
FROM actor
LIMIT 4


SELECT
first_name
FROM actor
ORDER BY first_name
LIMIT 4

SELECT DISTINCT
first_name,
last_name
FROM actor
ORDER BY first_name