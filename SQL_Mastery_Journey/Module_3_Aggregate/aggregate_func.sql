/*1. Display the total number of customers.*/
select count(*) from customers;

/*2. Display the maximum customer_id.*/
select max(customer_id) from  customers;

/*3. Display the minimum customer_id.*/
select min(customer_id) from  customers;

/*4. Display the total number of email values.*/
select count(email) from customers;

/*5. Display the total number of customers from Hyderabad.*/
select count(*) from customers where city='hyderabad';