/*1. Write a query to display:  Customer Name,Order ID
Use:INNER JOIN, Table aliases (c and o)*/
select c.customer_name,o.order_id from customers c inner join orders o on c.customer_id=o.customer_id;

/*2. Display: Customer Name | Order ID | Order Date
Use: INNER JOIN
Table aliases (c, o)*/
select c.customer_name,o.order_id,o.order_date
from customers c inner join orders o on c.customer_id=o.customer_id ;

/*3. Display:
Customer Name | Order ID | Status*/
select c.customer_name,o.order_id,o.status
from customers c inner join orders o on c.customer_id=o.customer_id ;

/*4. Display:
Customer Name | Quantity | Total Amount*/
select c.customer_name,o.quantity,o.total_amount
from customers c inner join orders o on c.customer_id =o.customer_id;

/*5. Display:
Customer Name | City | Order Date | Status*/
select c.customer_name,c.city,o.quantity,o.total_amount
from customers c inner join orders o on c.customer_id =o.customer_id;

/*6. Display only Delivered orders.
Customer Name | Order ID | Status*/
select c.customer_name,o.order_id,o.status
from customers c inner join orders o on c.customer_id=o.customer_id where status='delivered';

/*7. Display:
Order ID | Product Name*/
select p.product_name,o.order_id from products p inner join orders o on p.product_id=o.product_id ; 

/*8. Display:
Product Name | Brand | Quantity*/
select p.product_name,p.brand,o.quantity from 
products p inner join orders o on p.product_id=o.product_id ; 

/*9. Display: Product Name | Category | Unit Price*/
select p.product_name,p.category,o.unit_price from 
products p inner join orders o on p.product_id=o.product_id ; 

/*10. Display only Mobile products: Product Name | Brand | Quantity*/
select p.product_name,p.brand,o.quantity from 
products p inner join orders o on p.product_id=o.product_id
where category='mobile';

/*11. Display only products whose:
Status = Delivered
Product Name | Order Date | Status*/
select p.product_name,o.order_date,o.status from 
products p inner join orders o on p.product_id=o.product_id where status='delivered';