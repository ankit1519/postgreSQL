SELECT * from payment
wHERE customer_id=100



--CODING EXERCISE
-- WHERE
-- Write a SQL query to find all products in the 'Electronics' category. Select only the name of the product and the price.

-- You need to use only the SELECT, WHERE, and ORDER BY clauses to achieve this. Sort the results by price in ascending order.

-- Table and Column Names:

-- Table: products

-- Columns: product_id, name, category, price

SELECT name,price
FROM products
WHERE category='Electronics'
ORDER BY price


--Challenge 1
 -- how many payments made by customer id 100
SELECT 
	COUNT(*) FROM payment
	WHERE customer_id=100

 --Challenge 2
   --find last name of customer whose first name="ERICA"
 SELECT last_name FROM customer
 WHERE first_name='ERICA';