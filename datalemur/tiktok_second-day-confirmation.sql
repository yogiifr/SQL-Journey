/*
Write a query to display the user IDs of those who did not confirm their sign-up on the first day, but confirmed on the second day.

Definition:

action_date refers to the date when users activated their accounts and confirmed their sign-up through text messages.
*/

SELECT 
  e.user_id
FROM 
  emails e
JOIN
  texts t 
  ON e.email_id = t.email_id
WHERE
  t.signup_action = 'Confirmed'
  AND t.action_date = e.signup_date + INTERVAL '1 Day';