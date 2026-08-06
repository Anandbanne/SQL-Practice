
/*1. Display the number of products in each category.*/
 select category,count(*) from products group by category;
 
 /*2. Display the number of products for each brand.*/
 select brand,count(*) from products group by brand;

/*3. Display the maximum price of each category.*/
select category,max(price) from products group by category;

/*4. Display the minimum price of each category.*/
select category,min(price) from products group by category;

/*5. Display the average price of products in each category.*/
select category,avg(price) from products group by category;