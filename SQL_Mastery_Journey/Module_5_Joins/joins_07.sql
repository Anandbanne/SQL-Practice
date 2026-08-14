/*33. The sales team wants to identify customers who have never made a purchase, 
so they can send them a first-purchase promotional offer.*/
select c.customer_id,c.customer_name from 
customers c left join orders o on 
  c.customer_id=o.customer_id 
  where o.order_id is null;

/*34. The product team wants to identify products that have never appeared in any order, 
so they can review whether those products should remain in the catalog.*/
select p.product_id,p.product_name
from products p left join orders o on 
  p.product_id=o.product_id 
  where o.order_id is null;

/*35. The sales manager wants to identify which customers have placed multiple orders. 
They want to focus on their repeat customers and understand their purchasing behavior.*/
select c.customer_name,count(order_id)
from customers c inner join orders o on c.customer_id=o.customer_id group by c.customer_name having COUNT(order_id)>1;
