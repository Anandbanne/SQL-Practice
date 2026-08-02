/*26. Display the first 4 customers from:Hyderabad, Bangalore*/
select * from customers where 
city in ('hyderabad','bangalore') limit 4;