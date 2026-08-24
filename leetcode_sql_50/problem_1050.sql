/*
Problem : 1050. Actors and Directors Who Cooperated At Least Three Times
Platform: LeetCode
Difficulty: Easy
Date: 24-08-2026
*/
select actor_id,director_id
from Actordirector group by actor_id,director_id 
  having count(director_id)>=3;
