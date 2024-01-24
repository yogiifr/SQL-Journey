-- https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true

SELECT
    CONCAT(Name,'(',LEFT(Occupation,1),')') AS Result
FROM
    OCCUPATIONS
ORDER BY
    Name;
    
SELECT
    CONCAT('There are a total of ', COUNT(Occupation),' ', LOWER(Occupation),'s.') AS Result
FROM
    OCCUPATIONS
GROUP BY
    Occupation
ORDER BY
    COUNT(Occupation), Occupation;

/*
Ashely(P)
Christeen(P)
Jane(A)
Jenny(D)
Julia(A)
Ketty(P)
Maria(A)
Meera(S)
Priya(S)
Samantha(D)
There are a total of 2 doctors.
There are a total of 2 singers.
There are a total of 3 actors.
There are a total of 3 professors.
*/

-- Bisa make || untuk alternatif CONCAT