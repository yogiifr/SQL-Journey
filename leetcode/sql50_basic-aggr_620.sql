/*
Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".

Return the result table ordered by rating in descending order.
*/

SELECT
    *
FROM
    Cinema
WHERE
    description != 'boring' AND id % 2 = 1
ORDER BY
    rating DESC

/*
| id | movie      | description | rating |
| -- | ---------- | ----------- | ------ |
| 5  | House card | Interesting | 9.1    |
| 1  | War        | great 3D    | 8.9    |
*/