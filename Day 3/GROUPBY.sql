--GROUP BY
SELECT 
	customer_id,
	SUM(amount)
	FROM payment
GROUP BY(customer_id)
ORDER BY sum(amount)

--challenge
/*which two staff responsible for more payment
who did overall higher payment
if we  dontconsider 0 rs paymment
what will be result*/

SELECT staff_id,SUM(amount),
COUNT(*)
FROM payment
WHERE staff_id IN (1,2)
GROUP BY(staff_id)

SELECT staff_id,SUM(amount),
COUNT(*)
FROM payment
WHERE staff_id IN (1,2) AND amount != 0
GROUP BY(staff_id)



-- GROUP BY
-- Using the sales_data table, write a SQL query to calculate the total quantity sold and the total sale_amount for each category.

-- Your query should return columns for the category, the sum of quantity as total_quantity, and the sum of sale_amount as total_sales_amount. Order the results by total_sales_amount in descending order.

-- Important columns:

-- category

-- quantity

-- sale_amount



SELECT 
category,
    SUM(quantity) AS 
    total_quantity,
    
    SUM(sale_amount) AS
    total_sales_amount
FROM sales_data
GROUP BY category
ORDER BY total_sales_amount DESC