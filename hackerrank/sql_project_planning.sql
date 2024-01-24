-- https://www.hackerrank.com/challenges/sql-projects/problem?isFullScreen=true

/*
Write a query to output the start and end dates of projects listed by the number of days it took to complete the project in ascending order. If there is more than one project that have the same number of completion days, then order by the start date of the project.
*/

SET @prev_date = NULL, @grp = 0;

SELECT MIN(Start_Date) as Start_Date, MAX(End_Date) as End_Date
FROM (
    SELECT Start_Date, End_Date,
           @grp := IF(@prev_date = Start_Date - INTERVAL 1 DAY, @grp, @grp + 1) as grp,
           @prev_date := Start_Date
    FROM Projects
    ORDER BY Start_Date
) t
GROUP BY grp
ORDER BY COUNT(*) ASC, Start_Date ASC;

/*
2015-10-15 2015-10-16 
2015-10-17 2015-10-18 
2015-10-19 2015-10-20 
2015-10-21 2015-10-22 
*/