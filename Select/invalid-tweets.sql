-- https://leetcode.com/problems/invalid-tweets/

-- Postgres & SQL Server query
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content)>15;