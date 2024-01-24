/*
Write a query to obtain the third transaction of every user. Output the user id, spend and transaction date.
*/

with ranked_transactions AS (
    SELECT 
        user_id,
        spend,
        transaction_date,
        RANK() OVER(PARTITION BY user_id ORDER BY transaction_date) AS rank
    FROM 
        transactions
    ORDER BY
        user_id,
        transaction_date
)

SELECT
    user_id,
    spend,
    transaction_date
FROM
    ranked_transactions
WHERE rank = 3