/*Create a table called buildings with the following columns: 
building_name (varchar(25), primary key), capacity (int) */
create table buildings(building_name varchar(25) primary key,capacity int);
describe buildings;
insert into buildings values('1e',24);
insert into buildings values('1w',32);
insert into buildings values('2e',16);
insert into buildings values('2w',20);
select * from buildings;
create table employees(role varchar(20),name char(20),building varchar(20),years int);
insert into employees values('engineer','Becky A.','1e',4);
insert into employees values('engineer','Dan B.','1e',2);
insert into employees values('engineer','Sharan F.','1e',6);
insert into employees values('engineer','Dan M.','1e',4);
insert into employees values('engineer','Malcom S.','1e',1);
insert into employees values('Artist','Tylar S.','2w',2);
insert into employees values('Artist','Sherman D.','2w',8);
insert into employees values('Artist','Jakob J.','2w',6);
insert into employees values('Artist','Lillia.','2w',7);
insert into employees values('Artist','Brandon J.','2w',7);
insert into employees values('manager','Scott k.','1e',9);
insert into employees values('manager','shirlee m.','1e',3);
insert into employees values('manager','daria o.','1e',6);
insert into employees values('Engineer','yancy l.','',0);
insert into employees values('Artist','oliver p.','',0);

/*Find the list of all buildings that have employees */
select distinct building  from employees;

/*List all buildings and the distinct employee roles in each building (including empty buildings)*/
select distinct building_name from buildings  join employees 
on buildings.building_name =employees.building; 

/*Find the list of all buildings and their capacity*/
select building_name,capacity from buildings ;

/*List all buildings and the distinct employee roles in each building (including empty buildings)*/
select distinct building_name from buildings  join employees 
on buildings.building_name =employees.building; 

/*Find the list of all buildings and their capacity*/
select building_name,capacity from buildings ;