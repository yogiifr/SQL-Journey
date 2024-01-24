-- 

/*
Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.
*/

WITH t AS (
    SELECT
        X,
        Y,
        ROW_NUMBER() OVER(ORDER BY X) AS nrow
    FROM
        Functions
)

SELECT
    t1.X,
    t2.X1
FROM
    t t1, t t2
WHERE
    t1.nrow < t2.nrow AND t1.X = t2.Y AND t1.Y = t2.X

/*
2 24
4 22
5 21
6 20
*/