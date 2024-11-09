--concatenation
--give initial of name

SELECT LEFT(first_name,1) ||
'.' || LEFT(last_name,1) ||'.',
first_name,last_name
FROM customer

--challenge
--give anonymous version of email 
-- put first letter with 3 stars and 
--after @ its same provider

SELECT
LEFT(email,1) ||'***' || RIGHT(email,19)
FROM customer

/*
Concatenate
Write a single SQL query to concatenate the product name, category, and price into a single string for each product, formatted as: "Product Name - Category: Price". Use alias AS product_summary. Ensure the price is prefixed with a dollar sign ($), e.g. $1.99. Order the results by the product name in ascending order.

Available columns: product_id, name, category, and price from the products table. */


SELECT 
name || ' - ' ||
category||': $'||price AS 
product_summary
FROM products
ORDER BY name