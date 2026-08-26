/*10. The sales manager wants to identify customers whose individual order amount 
is greater than that customer's own average order amount.*/select * from orders; 

select c.customer_name,o.order_id,o.total_amount from 
customers c  inner join orders o on c.customer_id=o.customer_id 
  where  o.total_amount >
(select avg(o1.total_amount) from orders o1 where o.customer_id=o1.customer_id);
