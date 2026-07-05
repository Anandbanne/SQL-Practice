--Find the maximum and minimum marks
select max(marks) as maximum_mrks,min(marks) as minimum_mrks from Student;

--Count the total number of students.
select count(*) as total_stdnts from Student;

--Display student records in descending order of marks.
select * from Student order by marks desc;

-- Find the average marks for each branch.
select branch,avg(marks)  from Student group by branch;

--Count the number of students in each branch.
select branch,count(name) from Student group by branch;

--Update marks of a student with a specific student_id.
alter table Student add primary key (student_id);
update Student set marks=87 where student_id=609;
select * from Student where student_id=609;

--Delete a student record based on a condition.
SET SQL_SAFE_UPDATES = 0;
delete from Student where marks<70;
SET SQL_SAFE_UPDATES = 1;

--Find the maximum marks scored by a student.
select max(marks) from Student ;

--Retrieve students who scored above average marks.
select * from Student where marks>(select avg(marks) from Student);

--Find the total marks of students who are older than 21.
select sum(marks) from Student where age>21;