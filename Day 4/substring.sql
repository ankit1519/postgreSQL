--SUBSTRING
--SUBSTRING(string from position for length)

SELECT
SUBSTRING(email from 1 for 3)
from customer

SELECT 
SUBSTRING(email from POSITION('.' IN email)+1)
FROM customer


--challenge
--1 anonymized version of email in form
-- M***.S***@xyz.org


SELECT
	LEFT(email,1) ||'***'||
	'.'|| SUBSTRING(email FROM POSITION('.' IN email)+1
	FOR 1)||'***'||
	SUBSTRING(email from POSITION('@' IN email))
FROM customer


--challenge 2
-- format ***Y.S***@xyzorg.org

SELECT
	'***' ||SUBSTRING(
	email from POSITION('.' IN email)-1 for 3) ||
	'***' || SUBSTRING(email FROM 
	POSITION('@' IN email))

	FROM customer

