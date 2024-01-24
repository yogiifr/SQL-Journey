-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true

/*
Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.
*/

SELECT
    w.id,
    wp.age,
    w.coins_needed,
    w.power
FROM
    Wands w 
JOIN
    Wands_Property wp ON wp.code = w.code
WHERE
    wp.is_evil = 0 
    AND w.coins_needed = (SELECT MIN(sub.coins_needed) FROM Wands sub WHERE sub.code = w.code AND sub.power = w.power)
ORDER BY 
    w.power DESC, wp.age DESC;

/*
1038 496 4789 10 
1130 494 9439 10 
1315 492 4126 10 
9 491 7345 10 
858 483 4352 10 
1164 481 9831 10 
1288 464 4952 10 
*/