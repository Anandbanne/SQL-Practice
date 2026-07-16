/*
Practice - Create Table with Constraints

The Query written in the console is trying to create a table and add data to the same.
Debug this query to execute it successfully!*/
CREATE TABLE customer
(
  Id INT PRIMARY KEY,
  Name VARCHAR(30),
  Age INT,
  Address VARCHAR(30),
  email VARCHAR(30) UNIQUE
);

INSERT INTO customer(Id,Name,Age,Address,email)
VALUES  (1, 'John Smith', 25,  '123 Main St','john@example.com'),
        (2, 'Sarah Johnson', 30,'456 Broadway','sarah@example.com'),
        (3, 'Michael Brown', 45,  '789 5th Ave','michael@example.com'),
        (4, 'Jessica Davis', 28,  '321 Elm St','Anand@example.com');

select * from customer;