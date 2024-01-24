-- https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true

/*
The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of  from your result.
*/

SELECT
    hacker_id,
    name,
    SUM(max_score) AS score
FROM (
    SELECT 
        s.challange_id,
        s.hacker_id,
        h.name,
        MAX(s.score) AS max_score
    FROM
        submissions s
    LEFT JOIN hackers h ON h.hacker_id = s.hacker_id
    GROUP BY
        1, -- s.challange_id
        2, -- s.hacker_id
        3, -- h.name
) sub
GROUP BY
    1, -- hacker_id
    2, -- name
HAVING
    SUM(max_score) > 0
ORDER BY
    3 DESC, -- score
    1 -- hacker_id


select hacker_id, name, sum(max_score) as score from (
select a.challenge_id, a.hacker_id, b.name, max(a.score) as max_score
from submissions a left join hackers b on a.hacker_id = b.hacker_id
group by 1,2,3) a group by 1,2 having sum(max_score)>0 order by 3 desc, 1

/*
76971 Ashley 760 
84200 Susan 710 
76615 Ryan 700 
82382 Sara 640 
79034 Marilyn 580 
78552 Harry 570 
*/