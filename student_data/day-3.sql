--Create a Department table with dept_id and dept_name.
create table Department(Dept_id int,dept_name char(20));
describe Department;
alter table Department add primary key (dept_id);
insert into Department values(201,'ece');
insert into Department values(202,'csm');
insert into Department values(203,'cso');
insert into Department values(204,'cse');
select * from Department;

--Perform INNER JOIN between Student and Department tables.
select Student.student_id,Student.name,Department.Dept_id,Department.Dept_name
from Student inner join Department on Student.Branch = Department.dept_name;

--Perform LEFT JOIN between Student and Department tables.
select Student.student_id,Student.name,Department.Dept_id,Department.Dept_name
from Student left join Department on Student.Branch = Department.dept_name;

--Find duplicate names in the Student table.
insert into Student values(611, 'Eshwar', 19, 'csm',89 );
insert into Student values(617, 'Eshwar', 23, 'cse',76 );
insert into Student values(627, 'Harish', 17, 'ece',72 );
insert into Student values(612, 'vamshi', null, 'eee',69 );
insert into Student values(616, 'suresh', 19, 'cse',null );

select name,count(*) from Student group by name having count(*)>1;

--Retrieve top 3 students based on marks.
select * from Student order by marks desc limit 3;

--Find students whose marks are equal to the average marks.
select name,marks from Student where marks>(select avg(marks) from Student) order by marks asc;

