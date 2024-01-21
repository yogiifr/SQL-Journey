/*
Write a query to calculate the click-through rate (CTR) for the app in 2022 and round the results to 2 decimal places.

Definition and note:

Percentage of click-through rate (CTR) = 100.0 * Number of clicks / Number of impressions
To avoid integer division, multiply the CTR by 100.0, not 100.
*/

SELECT
  app_id,
  ROUND(100.0 * 
        COUNT(CASE WHEN event_type = 'click' THEN event_type END) /
        COUNT(CASE WHEN event_type = 'impression' THEN event_type END), 2) AS CTR
FROM events
WHERE EXTRACT(YEAR from timestamp) = 2022
GROUP BY app_id;