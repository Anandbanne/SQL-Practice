/*
Problem : 620. Not Boring Movies
Platform: LeetCode
Difficulty: Easy
Date: 15-08-2026
*/
select * from cinema where description <>'boring' and id%2!=0 
  group by movie order by rating desc ;
