/*
Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

Return the result table sorted in any order.
*/


SELECT 
    v.customer_id, 
    COUNT(v.visit_id) AS count_no_trans 
from 
    Visits v 
JOIN 
    Transactions t USING(visit_id) 
WHERE 
    t.transaction_id IS NULL 
GROUP BY 
    v.customer_id; 

/*
| customer_id | count_no_trans |
| ----------- | -------------- |
| 30          | 1              |
| 96          | 1              |
| 54          | 2              |
*/