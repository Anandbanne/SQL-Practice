/*
Project - Customer Database

Welcome to the Project to help you practice everything that you learnt about data manipulations.
Imagine you are hired by a Supermarket chain as a database analyst. Your initial task is to create a database of customers.

Task
Create a table 'customer'.
Add the below mentioned data to the table 'customer'.
Output the entire table.
Id	Name	Age	address
1	John Smith	25	123 Main St
2	Sarah Johnson	30	456 Broadway
3	Michael Brown	45	789 5th Ave
4	Jessica Davis	28	321 Elm St
5	David Lee	35	555 Park Ave
*/

-- Create a table 'customer'
Create table customer(Id int primary key,Name varchar(50),Age int, address varchar(50));
-- Insert data into the table 
insert into customer 

VALUES(1, 'John Smith', 25,  '123 Main St'),
(2, 'Sarah Johnson', 30,'456 Broadway'),
(3, 'Michael Brown', 45, '789 5th Ave'),
(4, 'Jessica Davis', 28, '321 Elm St'),
(5, 'David Lee', 35,  '555 Park Ave');
--ouput
select * from customer;