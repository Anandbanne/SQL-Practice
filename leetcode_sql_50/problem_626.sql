/*
Problem : 626. Exchange Seats
Platform: LeetCode
Difficulty: Easy
Date: 16-08-2026
*/
select  case 
            when id%2=1 and id<(select max(id) from seat) 
              then id+1
            when id%2=0
              then id-1
            else id
            end as id,student from seat order by id;  
