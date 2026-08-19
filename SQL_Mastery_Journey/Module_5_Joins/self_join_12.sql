/*45. Real-time business requirement: The business team wants to find pairs of customers who live in the same city. 
They want to use this information for city-based marketing campaigns.*/

select c1.customer_name,c2.customer_name,c1.city 
  from customers c1  inner join customers c2 
   on c1.city=c2.city and c1.customer_id<c2.customer_id;
