/*27. Display customers from Hyderabad or Bangalore.Using Or Using IN*/
select * from customers where 
city='Hyderabad' or city="bangalore"; 
/*or*/
select * from customers where 
city in ('hyderabad','bangalore');