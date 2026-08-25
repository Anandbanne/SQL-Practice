/*1. The product team wants to find all products whose price is higher than the average price of all products.*/

select product_name,price from products where 
  price  > (select avg(price) from products);
