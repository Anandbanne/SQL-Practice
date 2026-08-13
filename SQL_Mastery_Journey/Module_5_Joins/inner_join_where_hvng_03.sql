/*22. Find products whose total purchased quantity is greater than 2, considering only Delivered orders*/

select p.product_name,sum(o.quantity) as total_quantity 
from orders o inner join products p on o.product_id=p.product_id 
where o.status='delivered' group by p.product_name
having sum(o.quantity)>2;
