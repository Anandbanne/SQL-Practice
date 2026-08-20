/*
Problem : 183. Customers Who Never Order
Platform: LeetCode
Difficulty: Easy
Date: 08-08-2026
*/
select c.name as customers from customers c left join orders o on c.id = o.customerid 
where o.customerid is null ;
