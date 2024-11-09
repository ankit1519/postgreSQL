--String function
SELECT
	email,
	UPPER(email),
	LOWER(email),
	LENGTH(email)
FROM customer
WHERE LENGTH(email)<30

--challenge
/* find customer whose first name and 
last name is more than
10 character long bcz it is causing error 
and output it in 
lowercase*/
SELECT
LOWER(first_name) AS f,
LOWER(last_name) AS s,
LOWER(email)
FROM customer
WHERE LENGTH(first_name)>10 OR LENGTH(last_name)>10