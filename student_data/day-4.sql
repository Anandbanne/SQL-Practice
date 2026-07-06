--Use a subquery with IN operator to retrieve records.
select name from Student where branch in (select dept_name from Department);

--Find students who do not belong to 'ECE' branch.
select name from Student where branch <> 'ece';

--Retrieve students with NULL values in any column.
select name from Student where marks is null or age is null;

--Use GROUP BY and HAVING to filter results.
select branch,count(branch) from Student group by branch having count(*)>0;

--Find total marks of students branch-wise
select branch,sum(marks) as "total marks" from Student group by branch;

--Retrieve records using ORDER BY multiple columns.
select * from Student where name like '%a%' order by marks asc;