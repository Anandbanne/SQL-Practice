/*46. The management team wants to find customers who have 
   purchased products from more than one different brand. 
	They want to identify customers with diverse brand preferences.*/
select c.customer_name,count(distinct p.brand)
from products p inner join orders o on p.product_id=o.product_id 
inner join customers c on c.customer_id=o.customer_id group by c.customer_name
having count(distinct p.brand)>1;
