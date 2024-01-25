-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true

/*
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:
*/

SELECT
    co.continent,
    FLOOR(AVG(c.population))
FROM
    city c
JOIN country co ON co.code = c.countrycode
GROUP BY
    1

/*
Asia 693038
Europe 175138
Oceania 109189
South America 147435
Africa 274439
*/