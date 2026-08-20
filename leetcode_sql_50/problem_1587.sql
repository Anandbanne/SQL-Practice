/*
Problem : 1587. Bank Account Summary II
Platform: LeetCode
Difficulty: Easy
Date: 18-08-2026
*/
select u.name,sum(t.amount) as balance
from users u inner join transactions t on u.account=t.account 
  group by u.name having sum(t.amount)>10000;
