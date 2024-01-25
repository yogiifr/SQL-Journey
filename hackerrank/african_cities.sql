-- https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true

/*
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:
*/

SELECT
    c.name
FROM
    city c
JOIN country co ON co.code = c.countrycode
WHERE continent = 'Africa'

/*
Qina
Warraq al-Arab
Kempton Park
Alberton
Klerksdorp
Uitenhage
Brakpan
Libreville
*/