/*42. The marketing team wants to identify customers who purchased products from more than one different category. 
They want these customers for a cross-category marketing campaign.*/

select c.customer_name,count(distinct p.category) as category_count 
  from customers c inner join orders o on c.customer_id=o.customer_id 
   inner join products p on p.product_id=o.product_id 
    group by c.customer_id, c.customer_name 
     having count(distinct p.category)>1;
