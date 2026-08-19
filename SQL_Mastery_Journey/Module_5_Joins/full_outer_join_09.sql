/*43. he company is auditing its customer-order database. They want a report that shows:
customers who have orders, customers who never placed an order, orders that don't belong to any customer.*/
select c.customer_id,c.customer_name,o.order_id
from customers c left join orders o on c.customer_id=o.customer_id 
union 
select c.customer_id,c.customer_name,o.order_id from customers c right join orders o on o.customer_id=c.customer_id;
