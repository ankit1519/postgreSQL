--CASE WHEN and SUM
--using sum with case when
--we have to sum how many films have rating PG and G
	

SELECT
SUM(
CASE
WHEN rating IN ('PG','G') THEN 1
ELSE 0
END
)
FROM film


--challenge 1
--pivoting group by where I have to tell how much count
--each rating have

SELECT
SUM(CASE WHEN rating='G' THEN 1
ELSE 0 END) AS "G",
SUM(CASE WHEN rating='R' THEN 1
ELSE 0 END) AS "R",
SUM(CASE WHEN rating='NC-17' THEN 1
ELSE 0 END) AS "NC-17",
SUM(CASE WHEN rating='PG-13' THEN 1
ELSE 0 END) AS "PG-13",
SUM(CASE WHEN rating='PG' THEN 1
ELSE 0 END) AS "PG"

FROM film
