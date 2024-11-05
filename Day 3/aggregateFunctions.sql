--Aggregate function
SELECT
SUM(amount) FROM payment

SELECT COUNT(*)
FROM payment

SELECT MIN(amount),MAX(amount), ROUND(AVG(amount),2)
FROM payment


--challenge
/* find min,max,agerage,sum 
of replacement cost of film */

SELECT
	MIN(replacement_cost),
	MAX(replacement_cost),
	ROUND(AVG(replacement_cost),2),
	SUM(replacement_cost)
FROM film


/* Aggregate functions
Your challenge is to write a single SQL query to find the total number of orders and the average order amount from the Orders table. The solution should include only orders made in August 2023.

Use the aliases TotalOrders and AverageOrderAmount in your query.

Column names:

OrderID , 

Amount ,

OrderDate

Remember, you know how to use COUNT(), AVG(), WHERE, BETWEEN, and other basic SQL commands without grouping. */


select
    COUNT(*) AS TotalOrders,
    AVG(Amount) AS AverageOrderAmount
FROM Orders
WHERE OrderDate BETWEEN '2023-01-08' AND '2023-31-08 23:59'
