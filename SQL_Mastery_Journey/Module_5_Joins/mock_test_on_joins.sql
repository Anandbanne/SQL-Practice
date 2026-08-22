/*JOINS MOCK REST*/

/*1. The sales manager wants to identify customers who have placed at least two orders. 
They want to see these*/
select c.customer_name, count(o.order_id)
FROM customers c inner join orders o on c.customer_id=o.customer_id 
  group by c.customer_name having count(o.order_id)>=2;


/*2. The finance team wants to identify customers whose total spending on Delivered orders exceeds ₹100,000. 
They want the customers ranked from the highest spender to the lowest.*/
select c.customer_name,sum(o.total_amount) as total_spending
from customers c inner join  orders o on c.customer_id=o.customer_id where status='delivered' 
group by c.customer_id,c.customer_name 
 having sum(o.total_amount)>100000 order by total_spending desc; 
 
 
 /*3. The product team wants to identify products that have never been ordered. 
They want this list so they can decide whether those products 
   should be removed from the catalog or promoted.*/
select p.product_name
from products p left  join orders o on p.product_id=o.product_id 
  where o.order_id is null;


/*4. The management team wants to find which product categories generated more than ₹150,000 in revenue from Delivered orders. 
They want the categories ranked from highest revenue to lowest.*/
select p.category,sum(o.total_amount) as revenue
from products p inner join orders o on p.product_id=o.product_id where status="delivered" 
group by p.category having sum(o.total_amount)>150000 
  order by revenue desc;


/*5. The customer-support team wants to identify customers who have placed orders, 
but every one of their orders was cancelled. 
They want these customers contacted to understand why they cancelled.*/
select c.customer_name,count(o.order_id) as total_orders
from customers c inner join orders o on c.customer_id=o.customer_id  
group by c.customer_id,customer_name having count(o.order_id)=sum(o.status='cancelled') ;


/*6. The sales team wants to identify customers who have purchased 
at least one product from every category available in the product catalog*/
select c.customer_name,count(distinct p.category) as category_count 
from customers c inner join orders o on c.customer_id=o.customer_id inner join products p on p.product_id=o.product_id
group by c.customer_id,c.customer_name having count(distinct p.category)=(select count( distinct category) from products);


/*7. The product manager wants to identify brands whose delivered-order revenue is greater than 
the average delivered-order revenue across all products.*/
select p.brand,sum(o.total_amount) as revenue
from products p inner join orders o on p.product_id=o.product_id where o.status='delivered'
group by p.product_id,product_name having 
sum(o.total_amount)>(select avg(product_revenue) from 
                                           ( select p2.product_id,sum(o2.total_amount) as product_revenue  from 
											products p2 inner join orders o2 on p2.product_id=o2.product_id 
											where status='delivered' group by p2.product_id) as product_revenue) order by revenue desc;


/*8. The finance team wants to identify customers whose total spending 
on all orders is greater than the average total spending of all customers.*/
select c.customer_name,sum(o.total_amount) as total_spending
from customers c inner join orders o on c.customer_id=o.customer_id 
group by c.customer_id,c.customer_name having 
sum(o.total_amount)>(select avg(customer_spending) from 
                        ( select customer_id,sum(total_amount) as customer_spending 
							from orders group by customer_id 
						) 
                                as customer_totals
                    ) 
order by total_spending desc;
                  

/*9. The product team wants to identify products whose price is higher than 
the average price of all products.*/
select product_name,price 
from products group by product_id,product_name 
having sum(price)>(select avg(price) from products) 
order by price desc;


/*10. The management team wants to identify customers who have placed orders for at least two different products 
and whose total quantity purchased is greater than 3 units.*/
select c.customer_name,count(distinct o.product_id) from 
  customers c inner join orders o on c.customer_id=o.customer_id
   group by c.customer_id,c.customer_name 
       having  count(distinct o.product_id)>=2 and sum(o.quantity)>3;
