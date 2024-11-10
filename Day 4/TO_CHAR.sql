--  TO_CHAR
--TO_CHAR(date/time/interval, format)
SELECT EXTRACT(month from payment_date),
TO_CHAR(payment_date,'YYYY-MM'),
TO_CHAR(payment_date,'DAY')
FROM payment

--challenge
--need to sum payment and group in foll format
--1. Fri, 24/01/2020

SELECT
	SUM(amount) as sm,
	TO_CHAR(payment_date,'Dy, DD/MM/YYYY') AS d
FROM payment
	GROUP BY d
	ORDER BY sm

--2. May, 2020
SELECT
	SUM(amount) as sm,
	TO_CHAR(payment_date,'Mon, YYYY') AS d
FROM payment
	GROUP BY d
	ORDER BY sm

--3. Thu, 02:44
SELECT
	SUM(amount) as sm,
	TO_CHAR(payment_date,'Dy, HH:MI') AS d
FROM payment
	GROUP BY d
	ORDER BY sm DESC


