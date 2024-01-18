/*
Write a query to identify the top 2 Power Users who sent the highest number of messages on Microsoft Teams in August 2022. Display the IDs of these 2 users along with the total number of messages they sent. Output the results in descending order based on the count of the messages.
*/

SELECT 
  sender_id, 
  COUNT(message_id) AS massage_count
FROM messages
WHERE EXTRACT(MONTH FROM sent_date) = 08 
  AND EXTRACT(YEAR FROM sent_date) = 2022
GROUP BY sender_id
ORDER BY 2 DESC
LIMIT 2;