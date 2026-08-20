/*
Problem : 181. Employees Earning More Than Their Managers
Platform: LeetCode
Difficulty: Easy
Date: 07-08-2026
*/
select e2.name as employee from 
  employee e1 inner join  employee e2 on e1.id=e2.managerid  
  where e1.salary<e2.salary; 
