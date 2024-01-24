-- https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true

/*
Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.
*/

SELECT
    h.hacker_id,
    h.name
FROM
    Submissions s
    JOIN Hackers h ON h.hacker_id = s.hacker_id
    JOIN Challanges c ON c.challange_id = s.challange_id
    JOIN Difficulty d ON d.difficulty_level = s.difficulty_level
WHERE
    s.score = d.score
GROUP BY
    h.hacker_id, h.name
HAVING
    COUNT(s.hacker_id) > 1
ORDER BY
    COUNT(h.hacker_id) DESC, hacker_id ASC;

/*
27232 Phillip 
28614 Willie 
15719 Christina 
43892 Roy 
14246 David 
*/