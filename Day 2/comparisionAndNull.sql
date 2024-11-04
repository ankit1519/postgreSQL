-- > <=

SELECT * FROM payment
WHERE amount< 10.99

SELECT * FROM payment
WHERE amount>= 10.99 ORDER BY amount DESC

SELECT * FROM payment
WHERE amount!= 10.99 ORDER BY amount DESC


-- IS NULL and IS NOT NULL
SELECT last_name,first_name FROM customer
WHERE first_name IS NOT NULL


-- WHERE operators
-- Write a SQL query to find all products (only select name and price) that have a price of more than 200.

-- You need to use only the SELECT, WHERE, and ORDER BY clauses to achieve this. Sort the results by price in ascending order.

-- Table and Column Names:

-- Table: products

-- Columns: product_id, name, category, price

SELECT name, price
    FROM products
    WHERE price>200
    ORDER BY price

