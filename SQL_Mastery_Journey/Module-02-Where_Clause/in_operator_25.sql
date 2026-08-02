/*25. Display customer names and cities where the city is: Mumbai, Delhi, Kolkata*/
select customer_name,city from customers where 
city in('mumbai','delhi','kolkata');