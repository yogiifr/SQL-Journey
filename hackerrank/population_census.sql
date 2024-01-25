-- https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true

/*
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:
*/

SELECT
    SUM(c.population) AS population_total
FROM
    city c
JOIN country co ON co.code = c.countrycode
WHERE
    co.continent = 'Asia';

-- 27028484