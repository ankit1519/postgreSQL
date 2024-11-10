--position
SELECT
	POSITION('@' IN email)
FROM customer

SELECT
	LEFT(email,POSITION('@' IN email)-1) AS id
FROM customer

SELECT
	LEFT(email,POSITION(last_name IN email) -2) AS val,
	email
FROM customer

--challenges
--use column email,last_name
-- extract first name from email
--concatenate with last name in form : 
'Last name, First name'

SELECT
	last_name||', '||
	LEFT(email,POSITION(last_name IN email)-2)
FROM customer

