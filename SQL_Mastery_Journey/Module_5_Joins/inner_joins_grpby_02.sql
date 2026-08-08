/*12. Display: Customer Name | Product Name | Quantity*/
select c.customer_name,p.product_name,o.quantity from 
customers c inner join orders o on c.customer_id=o.customer_id 
inner join products p on o.product_id=p.product_id ;

/*13.Display: Customer Name | Product Name | Brand | Quantity | Total Amount*/
select c.customer_name,p.product_name,p.brand,o.quantity,o.total_amount
from customers c inner join orders o on c.customer_id=o.customer_id inner join  products p on p.product_id=o.product_id; 


/*14. Display Delivered orders: Customer Name | Product Name | Quantity | Order Date*/
select c.customer_name,p.product_name,o.quantity,o.order_date
from customers c inner join orders o on c.customer_id=o.customer_id 
inner join  products p on p.product_id=o.product_id 
where status='delivered';

/*15. Display: Customer Name | Product Name | Total Amount
for orders where the total amount is greater than 50,000, sorted by total_amount from highest to lowest*/
select c.customer_name,p.product_name,o.total_amount
from customers c inner join orders o on c.customer_id=o.customer_id inner join  products p on p.product_id=o.product_id 
where total_amount>50000 order by total_amount desc;

/*16. Find the total amount spent by each customer.*/
select c.customer_name,sum(o.total_amount) as total_spent
from customers c inner join orders o on c.customer_id=o.customer_id group by c.customer_name ; 

/*17. Display the total amount spent by each customer, sorted from highest spender to lowest spender.*/
select c.customer_name,sum(o.total_amount) as total_spent
from customers c inner join orders o on c.customer_id=o.customer_id 
group by c.customer_name order by sum(o.total_amount) desc;

/*18. Find customers whose total spending is greater than ₹100,000.*/
select c.customer_name,sum(o.total_amount) as total_spent
from customers c inner join orders o on c.customer_id=o.customer_id 
group by c.customer_name having sum(o.total_amount)>100000 ;

/*19. Find the total quantity of products purchased for each product.
Display: Product Name | Total Quantity*/
select p.product_name,sum(o.quantity) 
from products p inner join orders o on p.product_id = o.product_id group by p.product_name;


/*20. Find how many orders each product has received.
Output: Product Name | Number of Orders*/
select p.product_name,sum(order_id) as number_of_orders from products p inner join orders o
on p.product_id=o.product_id group by product_name;

/*21. Products whose total purchased quantity is greater than 2.
Display: Product Name | Total Quantity*/
select p.product_name,sum(o.quantity) 
from products p inner join orders o on p.product_id = o.product_id group by p.product_name having sum(o.quantity)>2;
