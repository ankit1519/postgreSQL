--RIGHT and LEFT function
SELECT
	RIGHT(first_name,2),
	first_name,
	LEFT(first_name,2)
FROM customer

--get the 2nd letter
SELECT first_name,
RIGHT(LEFT(first_name,2),1)
FROM customer

--challenges
--1. extract last 5 chars of email
--2. email ends with .org extract dot
SELECT 
email,
RIGHT(email,5),
LEFT(RIGHT(email,4),1)
FROM customer