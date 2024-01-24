-- https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true

SELECT
    ROUND((MAX(LAT_N)-MIN(LAT_N)) + MAX(LONG_W)-MIN(LONG_W), 4)
FROM
    STATION;

/*
Selisih a/LAT_N + Selisih b/LONG_W , buat dalam 4 angka decimal
259.6859
*/