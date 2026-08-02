/*PRACTICE SET QSTNS ON {WHERE, AND, OR, LIMIT, ORDER BY}*/
/*Display the first 3 customers from Hyderabad or Bangalore, ordered by customer_name.*/
select * from customers where city ='hyderabad' or city='bangalore' order by customer_name limit 3;

/*Display customers whose customer_id is between 5 and 15, ordered by registration_date DESC.*/
select * from customers where customer_id between 5 and 15 order by registration_date desc;

/*Display customer_name and city of customers who are not from Hyderabad.*/
select customer_name,city from customers where city not like "hyderabad";

/*Display the latest 5 customers from India. (Hint: latest means order by registration_date)*/
select * from customers order by registration_date limit 5;

/*Display customers whose city is Mumbai OR Chennai and whose customer_id is greater than 10.*/
select * from customers where city in ('mumbai','chennai') and customer_id >10;

/*Display customers whose names start with A and end with d.*/
select * from customers where customer_name like "A%" and customer_name like "%d";

/*Display customers whose city contains "bad".*/
select * from customers where city like '%bad%';

/*Display customers whose names do not contain "an".*/
select * from customers where customer_name not like "%an%";

/*Display customers whose names have exactly 5 letters.*/
select * from customers where customer_name like "_____";

/*Display customers whose names start with A and have exactly 5 letters.*/
select * from customers where customer_name like "a____";

/*Display only customer_name and email of customers whose city is in:
Hyderabad, Delhi, Mumbai Order by customer_name.*/
select customer_name,email from customers where city in ('hyderabad','delhi','mumbai') order by customer_name;

/*Display the first 5 customers whose registration date is between
2026-07-05 and 2026-07-20 Order by registration_date.*/
select * from customers where registration_date between "2026-07-05" and "2026-07-20" order by registration_date limit 5;

/*Display customers whose customer_id is NOT between 5 and 10.*/
select * from customers where customer_id not between 5 and 10;

/*Display customers whose names do not start with A but whose city starts with H.*/
select * from customers where customer_name not like 'a%' and city like "H%";

/*Display customers who satisfy any one of the following:
City = Hyderabad Customer name starts with P customer_id is between 15 and 20 Order by customer_name DESC.*/
select * from customers where city ='hyderabad' or customer_name like "p%" or customer_id between 15 and 20 order by customer_name desc; 