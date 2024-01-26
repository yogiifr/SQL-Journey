/*
Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.

Return the result table in any order.
*/

SELECT
    eu.unique_id,
    e.name
FROM
    employees e
LEFT JOIN
    employeeuni eu ON e.id = eu.id

/*
| unique_id | name     |
| --------- | -------- |
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |
*/