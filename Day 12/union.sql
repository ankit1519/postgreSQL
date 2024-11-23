--union
SELECT first_name,'actor' FROM actor
UNION
SELECT first_name,'customer' FROM customer
ORDER BY 1

--union all
SELECT first_name,'actor' FROM actor
UNION ALL
SELECT first_name,'customer' FROM customer
ORDER BY 1

--more
SELECT first_name,'actor' FROM actor
UNION
SELECT first_name,'customer' FROM customer
UNION
SELECT UPPER(first_name) , 'staff' FROM staff
ORDER BY 2


--column name??
SELECT first_name,'actor' as origin FROM actor
UNION
SELECT first_name,'customer' as test1 FROM customer
UNION
SELECT UPPER(first_name) , 'staff' FROM staff
ORDER BY 2