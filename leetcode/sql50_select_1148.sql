/*
Write a solution to find all the authors that viewed at least one of their own articles.

Return the result table sorted by id in ascending order.
*/

SELECT
    DISTINCT(author_id) id
FROM
    Views
WHERE
    author_id = viewer_id
ORDER BY
    id ASC

/*
| id |
| -- |
| 4  |
| 7  |
*/