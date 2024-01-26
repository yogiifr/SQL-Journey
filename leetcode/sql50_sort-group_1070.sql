/*
Write a solution to select the product id, year, quantity, and price for the first year of every product sold.

Return the resulting table in any order.
*/

SELECT
    s.product_id,
    s.year AS first_year,
    s.quantity,
    s.price
FROM
    Sales s
WHERE 
    (product_id, year) IN 
    (
        SELECT 
            product_id,
            MIN(year) AS first_year
        FROM 
            Sales
        GROUP BY 
            product_id
    );

/*
| product_id | first_year | quantity | price |
| ---------- | ---------- | -------- | ----- |
| 100        | 2008       | 10       | 5000  |
| 200        | 2011       | 15       | 9000  |
*/