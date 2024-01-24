-- https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true 

SELECT ROUND(LAT_N, 4) AS Median_Latitude
FROM (
  SELECT LAT_N,
         ROW_NUMBER() OVER (ORDER BY LAT_N) AS RowAsc,
         ROW_NUMBER() OVER (ORDER BY LAT_N DESC) AS RowDesc
  FROM STATION
) AS Subquery
WHERE RowAsc = RowDesc OR RowAsc + 1 = RowDesc OR RowAsc = RowDesc + 1;

/*
Median Latitude and 4 decimal places
83.8913
*/

/* Jika menggunakan CTE

WITH RankedLatitudes AS (
  SELECT
    LAT_N,
    ROW_NUMBER() OVER (ORDER BY LAT_N) AS RowAsc,
    ROW_NUMBER() OVER (ORDER BY LAT_N DESC) AS RowDesc
  FROM
    STATION
)

SELECT ROUND(LAT_N, 4) AS Median_Latitude
FROM RankedLatitudes
WHERE RowAsc = RowDesc OR RowAsc + 1 = RowDesc OR RowAsc = RowDesc + 1;

*/