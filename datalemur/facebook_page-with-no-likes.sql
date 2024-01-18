/*
Write a query to return the IDs of the Facebook pages that have zero likes. The output should be sorted in ascending order based on the page IDs.
*/

SELECT 
  page_id
FROM pages
EXCEPT
SELECT
  page_id
FROM page_likes;