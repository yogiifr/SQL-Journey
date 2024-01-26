/*
Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.

Return the result table in any order.
*/

SELECT
    p.project_id,
    ROUND(AVG(e.experience_years), 2) AS average_years
FROM
    Project p
JOIN
    Employee e USING (employee_id)
GROUP BY
    1

/*
| project_id | average_years |
| ---------- | ------------- |
| 1          | 2             |
| 2          | 2.5           |
*/
