/*28. All customers and the total amount they have spent. Include customers who have never placed an order.*/
select c.customer_name,coalesce(sum(o.total_amount),0) as total_spent  
from customers c left join orders o on c.customer_id=o.customer_id 
group by c.customer_name;

/*29. Find customers whose total spending is greater than ₹100,000, but include the LEFT JOIN approach.*/
select c.customer_name,coalesce(sum(o.total_amount),0) as total_spent
from customers c left join orders o on c.customer_id=o.customer_id 
group by c.customer_name 
  having sum(o.total_amount)>100000;

/*30. Find products that have never been ordered.
Display: Product Name | Brand | Catego*/
select p.product_name,p.brand,p.category
from products p left join orders o on p.product_id=o.product_id 
where o.order_id is null;
