/*
Problem : 511. Game Play Analysis I
Platform: LeetCode
Difficulty: Easy
Date: 11-08-2026
*/
select player_id,min(event_date) as first_login from activity 
  group by player_id;
