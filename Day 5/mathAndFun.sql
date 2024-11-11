--Mathematical functions and operators
SELECT
	4+3,
	4-3,
	5/2,
	5.0/2,
	abs(-11),
	ceiling(4.33),
	floor(4.33),
	ROUND(4.33),
	SUM(rental_id)+5 FROM rental


--increase rental rate for film by $1

SELECT
film_id,
rental_rate as old_rent,
rental_rate+1 as new_rate
FROM film

--list films including rental rate/replacement cost
--where rental rate is less than 4% of replacement cost
SELECT film_id,
ROUND(rental_rate/replacement_cost*100,2) as P
FROM film
WHERE ROUND(rental_rate/replacement_cost*100,2) <4
ORDER BY p


/*
Mathematical functions and operators
Return the product with the highest total revenue. Return the product name and its total revenue (alias: total_revenue). You need to use mathematical operators to calculate the total revenue for each product (quantity_sold * price_per_unit) and aggregate functions to find the sum of revenues for each product.

Table Name: sales

Column Names: product_name, quantity_sold, price_per_unit */

-- solution

select
product_name,
SUM(quantity_sold*price_per_unit) AS total_revenue
from sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 1