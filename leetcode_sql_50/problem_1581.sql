/*
Problem : 1581 Customer Who Visited but Did Not Make Any Transactions
Platform: LeetCode
Difficulty: Easy
Date: 09-07-2026
*/
select customer_id,count(customer_id) as count_no_trans from visits  left join transactions 
on visits.visit_id=transactions.visit_id where transaction_id is null group by customer_id;