/*
Problem : 1683 Invalid Tweets
Platform: LeetCode
Difficulty: Easy
Date: 23-06-2026
*/
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;