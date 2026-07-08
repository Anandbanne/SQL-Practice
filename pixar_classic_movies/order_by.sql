--Create a table called North_American_Cities with the following columns: city, country, population, latitude, and longitude. The city column should be the primary key. Insert the following data into the table:
use classic_movies;
create table North_American_Cities(city varchar(20) primary key, country char(20), population  int, latitude float,longitude float);
insert into North_american_cities values ('Guadalajara','Mexico',1500800,20.659699,-103.349609);
insert into North_american_cities values ('Toronto','Canada',2795060,43.653226,-79.383184);
insert into North_american_cities values ('Houston','United_States',2195914,29.760427,-95.369803);
insert into North_american_cities values ('New York','United_States',8405837,40.712784,-74.005941);
insert into North_american_cities values ('Philadelphia','United_States',1553165,39.952584,-75.165222);
insert into North_american_cities values ('Havana','Cuba',2106146,23.05407,-82.345189);
insert into North_american_cities values ('Mexico City','Mexico',8555500,19.432608,99.133208);
insert into North_american_cities values ('Phoenix','United_States',1513367,33.448377,-112.074037);
insert into North_american_cities values ('Los_Angeles','United_States',3884307,34.052234,-118.243685);
insert into North_american_cities values ('Ecatepec_de_Morelos','Mexico',1742000,19.601841,-99.050674);
insert into North_american_cities values ('Montreal','Canada',1717767,45.501689,-73.567256);
insert into North_american_cities values ('Chicago','United_States',2718782,41.878114,-87.629798);
alter table North_american_cities modify city varchar(25);
select * from North_American_cities;


--List all the Canadian cities and their populations
select city,population from North_American_cities where country='canada';


--Order all the cities in the United States by their latitude from north to south
select city,latitude from North_American_cities where country='united_states' order by latitude desc;

--List all the cities west of Chicago, ordered from west to east
select city,longitude from North_American_cities  where 
longitude < -87.629798 order by longitude asc;

--List the two largest cities in Mexico (by population)
select city,population from North_American_cities where 
country like 'mexico' order by population desc limit 2;

--List the third and fourth largest cities (by population) in the United States and their population
select city,population from North_American_cities where 
country like 'United_states' order by population desc limit 2 offset 2 ;
