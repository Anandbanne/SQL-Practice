/*
Problem : 175. Combine Two Tables
Platform: LeetCode
Difficulty: Easy
Date: 22-08-2026
*/
select p.firstname,p.lastname,a.city,a.state from 
  person p left join address a on p.personid=a.personid ;
