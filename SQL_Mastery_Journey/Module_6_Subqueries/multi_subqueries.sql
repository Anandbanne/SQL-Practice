/*4. The inventory team wants to identify products that have been ordered 
with a quantity greater than 2 in at least one order.*/select * from orders;
 select product_name from products where product_id in 
   (select product_id from orders where quantity>2);


/*5. The marketing team wants to identify customers who have placed at least one Delivered order. 
 They want to send these customers a loyalty offer*/ 
select customer_name from customers where customer_id in 
(select customer_id from orders where status="delivered");


/*6. The marketing team wants to identify customers who have never placed a Delivered order. 
They want to target these customers with a special promotion.*/
select customer_name from customers where customer_id not in 
(select customer_id from orders where status='delivered');
