/*
Problem : 1378 Replace Employee ID With The Unique Identifier
Platform: LeetCode
Difficulty: Easy
Date: 09-07-2026
*/
select unique_id,name from employees left join employeeuni
 on employees.id=employeeuni.id order by name;