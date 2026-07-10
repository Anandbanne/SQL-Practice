/*
Problem : 1148 Article Views I
Platform: LeetCode
Difficulty: Easy
Date: 23-06-2026
*/
select distinct author_id as id from Views where viewer_id = author_id order by id asc;