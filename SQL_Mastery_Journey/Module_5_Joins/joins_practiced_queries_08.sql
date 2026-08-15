/*36. The finance team wants to know which products are generating the most revenue. 
They want the products ranked from the highest revenue-generating product to the lowest.*/
select p.product_id,p.product_name,sum(total_amount)
from products p inner join orders o on p.product_id=o.product_id
 group by p.product_id,p.product_name  order by sum(total_amount) desc;
 
 
 /*37. The marketing team wants to identify customers who have spent more than ₹100,000 on delivered orders only.
 They want to target these high-value customers with a premium loyalty campaign.*/
select c.customer_name,sum(o.total_amount)
 from customers c inner join orders o on c.customer_id=o.customer_id  where status='delivered' 
 group by c.customer_id,c.customer_name having sum(o.total_amount)>100000 order by sum(o.total_amount) desc;


 /*38. The inventory team wants to identify brands whose products have generated more than ₹150,000 in revenue from delivered orders.
 They want to prioritize these brands for future inventory planning.*/
 select  p.brand,sum(o.total_amount) as brand_revenue
  from products p inner join orders o on p.product_id=o.product_id 
  where o.status='delivered' group by p.brand having sum(o.total_amount)>150000 order by brand_revenue desc;
  
  
  /*39. Management wants to compare the average order value for each product category, 
  but only categories where the average value of a 
  Delivered order is above ₹20,000 should be included.*/
  select p.category,avg(o.total_amount)
  from products p inner join orders o on p.product_id=o.product_id 
  where status='delivered' group by p.category 
  having avg(o.total_amount)>20000 order by avg(o.total_amount) desc;
