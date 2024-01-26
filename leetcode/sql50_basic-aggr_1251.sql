/*
Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places.

Return the result table in any order.
*/

SELECT  
    p.product_id,   
    IFNULL(ROUND(SUM(p.price*u,units)/SUM(u.units), 2), 0) AS average_price
FROM
    prices p 
LEFT JOIN
    unitssold u 
    ON p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date 
    AND p.end_date
GROUP BY 
    p.product_id 

/*
| product_id | average_price |
| ---------- | ------------- |
| 1          | 6.96          |
| 2          | 16.96         |
*/
