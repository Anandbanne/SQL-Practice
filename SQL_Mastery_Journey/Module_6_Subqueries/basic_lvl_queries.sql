/*1. The product team wants to find all products whose price is higher than the average price of all products.*/

select product_name,price from products where 
  price  > (select avg(price) from products);

/*2. The management team wants to identify the most expensive product in the catalog. 
Return the product name and its price.*/
select product_name,price from products where 
  price = (select max(price) from products);


/*3. The finance team wants to identify orders whose total amount is greater than the average order amount. 
They want to review unusually high-value orders.*/
select order_id,total_amount from orders where 
  total_amount >(select avg(total_amount) from orders);
