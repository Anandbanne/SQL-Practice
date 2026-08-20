/*
Problem : 182. Duplicate Emails
Platform: LeetCode
Difficulty: Easy
Date: 09-08-2026
*/
select email from person 
  group by email 
   having count(email)>1;
