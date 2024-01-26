/*
Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

Return the result table in any order.
*/

SELECT
    tweet_id
FROM
    Tweets
WHERE
    LENGTH(content) >= 15

/*
| tweet_id | content                          |
| -------- | -------------------------------- |
| 1        | Vote for Biden                   |
| 2        | Let us make America great again! |

| tweet_id |
| -------- |
| 2        |
*/