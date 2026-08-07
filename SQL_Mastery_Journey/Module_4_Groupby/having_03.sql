

/*11. Display brands having more than 2 products.*/
select brand,count(*) from  products group by brand having count(*)>2;

/*12. Display categories whose average rating is greater than 4.5.*/
select category,avg(rating) from products group by category having avg(rating)>4.5;

/*13. Display brands whose total stock quantity is greater than 50.*/
select brand,sum(stock_quantity) from products group by brand having sum(stock_quantity)>50 ;

/*14. Display categories whose maximum price is greater than 50000.*/
select category,max(price) from products group by category having max(price)>50000;

/*15. Display brands having exactly 3 products.*/
select brand,count(*) from products group by brand having count(*)=3;