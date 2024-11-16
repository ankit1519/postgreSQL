--challenge
--from rental table we have to query rental date,return date
--but in some cases rental things are not returned 
-- to replace them with 'not returned'
-- basically rental,return date is timestamp

SELECT
rental_date,
COALESCE(CAST(return_date AS VARCHAR),'not returned')
FROM rental
ORDER BY rental_date DESC


