--IN
SELECT * FROM customer
WHERE customer_id IN (123,212,323,243,353)

--NOT IN
SELECT * FROM customer
WHERE
	customer_id NOT IN (123,212,323)


--challenge
/* find faulty payment from 
c_id 12,25,67,93,124,234
amount contains 4.99,  7.99, 9.99
month is Jan 2020 */

SELECT * FROM payment
WHERE customer_id IN (12,25,67,93,124,234)
AND amount IN (4.99, 7.99, 9.99)
AND payment_date BETWEEN '2020-01-01' AND '2020-01-31 11:59'


-- IN operator
-- Write a single SQL query to select all distinct customer IDs who ordered either a 'Laptop', 'Tablet', or 'Smartphone'. Order the result by customer ID in ascending order.

-- Table Name: orders
-- Important Columns: customer_id, product_name

SELECT distinct(customer_id) FROM orders
WHERE product_name IN ('Laptop','Tablet','Smartphone')
ORDER BY customer_id 