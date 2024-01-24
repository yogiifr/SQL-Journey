-- https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true

/*
Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.
*/

SELECT
    s.name
FROM
    students s 
    JOIN friends f USING(id)
    JOIN packages p1 USING(id)
    JOIN packages p2 ON f.friend_id = p2.id
WHERE
    p2.salary > p1.salary
ORDER BY p2.salary;

/*
Stuart 
Priyanka 
Paige 
Jane 
Julia 
*/