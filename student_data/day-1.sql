/*Student Datbase Practice
  Author: Anand
  Topic: SQL Basics
*/

--Create Database 
create database Student;
use Student;

--Create a Student table with columns: student_id, name, age, branch, marks.
create table Student(student_id int , name char(15), age int, branch char(20), marks int);


--Insert at least 5 records into the Student table.
insert into Student values(609, 'Anand', 22, 'csm',78 );
insert into Student values(603, 'Harish', 20, 'cse',81 );
insert into Student values(646, 'Akash', 19, 'cso',68 );
insert into Student values(619, 'Adhi', 22, 'cse',88 );
insert into Student values(602, 'Rohan', 20, 'ece',98 );
insert into Student values(607, 'Eshwar', 19, 'csm',92 );

-- Retrieve all records from the Student table.
select * from Student;

--Display only name and marks from the Student table.
select name,marks from Student ;

--Find students with marks greater than 80.
select name from Student where marks>80;

--Retrieve students belonging to 'CSE' branch.
select * from Student where branch='cse';

--Find students with marks between 70 and 90.
select name from student where marks between 70 and 90;

--Retrieve students whose names start with 'A'.
select * from Student where name like 'a%';

--Find the average marks of students.
select avg(marks) from Student;