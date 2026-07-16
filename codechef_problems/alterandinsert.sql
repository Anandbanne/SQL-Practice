/*
Practice - Alter Table and Insert Data
Existing table - 'customer' with column headers and 0 rows.
┌────┬───────────────┬─────┬──────────┐
│ Id │     Name      │ Age │ Address  │
└────┴───────────────┴─────┴──────────┘
Task
Take the table given above and add an additional column 'email' to the table 'customer'.
Consider the table 'customer' to be empty and insert the below data
Output all the entires in the table.
*/
Alter table customer add column email varchar(50); 

insert into customer
VALUES(1, 'John Smith', 25, 'Main St','john@ex.com'),
(2, 'Sarah Johnson', 30,'Broadway','sarah@ex.com');

select * from customer;