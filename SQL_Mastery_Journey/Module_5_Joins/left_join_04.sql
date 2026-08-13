/*23. Display all customers and their order IDs, including customers who have never placed an order.*/
select c.customer_name,o.order_id 
  from customers c left join orders o on c.customer_id=o.customer_id ;

/*24. Display customers who have never placed an order.*/
select c.customer_name 
  from customers c left join orders o on c.customer_id=o.customer_id 
where o.customer_id is null;

/*25. Display all products, including products that have never been ordered.*/
select p.product_name,o.order_id 
from products p left join orders o on p.product_id=o.product_id ;

/*26. Find products that have never been ordered.*/
select p.product_name
from products p left join orders o on p.product_id=o.product_id 
  where o.product_id is null;

/*27. Display ALL customers and the products they ordered. Include customers even if they have never placed an order.*/
select c.customer_name,p.product_name 
from customers c left join orders o on c.customer_id = o.customer_id 
  left join products p on p.product_id=o.product_id ;
