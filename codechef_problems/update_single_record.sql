/*
Practice - Update Single Record

Write a query which does the following

Update the age to 52 for the customer with customer id 3.
Output all the entires of the table.
Original table has the following rows*/

update customer set age=52 where Id=3;

select * from customer;