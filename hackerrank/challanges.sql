-- https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true

/*
Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.
*/

WITH CTE AS (
    SELECT
        h.hacker_id AS id,
        name,
        count(ch.challange_id) AS cnt 
    FROM
        Hackers h JOIN challanges ch on h.hacker_id = ch.hacker_id
    GROUP BY
        h.hacker_id, name
)

SELECT
    *
FROM
    CTE
WHERE cnt NOT IN()

/*
5120 Julia 50
18425 Anna 50
20023 Brian 50
33625 Jason 50
41805 Benjamin 50
*/