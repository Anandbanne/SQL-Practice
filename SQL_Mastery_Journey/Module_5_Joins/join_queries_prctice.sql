/*40. The business team wants to know which cities generate the highest revenue. 
However, they only want revenue from Delivered orders, 
and a city should be included only when its total revenue is greater than ₹200,000.*/
select c.city,sum(o.total_amount) as total_revenue
from customers c inner join orders o on c.customer_id=o.customer_id 
where status ='delivered' group by city having sum(o.total_amount) > 200000 ;


/*41. The product manager wants to identify the top-selling products by quantity, but only based on Delivered orders. 
Products should be considered successful only if customers have purchased more than 2 units in total. 
The final report should rank the successful products from highest quantity sold to lowest.*/
select p.product_name,sum(o.quantity) as total_quantity
from products p inner join orders o on p.product_id=o.product_id 
where o.status='delivered' group by product_name having sum(o.quantity)>2 order by total_quantity desc;
