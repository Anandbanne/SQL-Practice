/*22. Display the first 3 customers who are from Hyderabad OR Bangalore.*/
select * from customers where 
city='Hyderabad' or city='Bangalore' 
limit 3;