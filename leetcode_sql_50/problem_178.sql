/*
Problem : 178. Rank Scores
Platform: LeetCode
Difficulty: Easy
Date: 17-08-2026
*/

SELECT s.score,(
           SELECT COUNT(DISTINCT s2.score)
           FROM Scores s2
           WHERE s2.score >= s.score
       ) AS rank
FROM Scores s ORDER BY s.score DESC;
