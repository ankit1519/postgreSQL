-- BETWEEN
SELECT * FROM payment
WHERE amount BETWEEN 1.99 AND 6.99


SELECT * FROM payment
WHERE amount NOT BETWEEN 1.99 AND 6.99

SELECT * FROM rental
WHERE rental_date BETWEEN '2005-05-24' 
AND '2005-05-26'

--challenge
 --find payment made between 26th jan 2020 
      -- to 27th jan  2020 amt bw 1.99 to 3.99

SELECT COUNT(*) FROM payment
WHERE
	amount BETWEEN 1.99 AND 3.99
	AND
	payment_date 
	BETWEEN '2020-01-26' AND '2020-01-27 23:59'


-- BETWEEN
-- Write a single SQL query to find all transactions from the the table sales that occurred between '2024-01-10' and '2024-02-10', inclusive. Display the transaction ID, date, and amount. Order the results by the date of the transaction.
-- Make sure you return:
-- id
-- date
-- amount
-- Order by the transaction date.


SELECT id,date,amount
FROM sales
where
    date BETWEEN '2024-01-10' AND 
    '2024-02-10 23:59'
    ORDER BY date