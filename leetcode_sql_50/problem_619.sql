/*
Problem : 619. Biggest Single Number
Platform: LeetCode
Difficulty: Easy
Date: 14-08-2026
*/

select max(num) as num from mynumbers where num in (
select num from mynumbers group by num having count(num)=1 );
