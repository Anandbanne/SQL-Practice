--creating database
Create database Classic_movies;
use Classic_movies;

--create table with movies and insert 
create table Movies(id int, title varchar(20),director char(15), year int, len_minutes int );
insert into movies  values(1,'Toy_story','John_Lasseter',1995,81);
insert into movies  values(2,'A_Bugs_Life','John_Lasseter',1998,95);
insert into movies  values(3,'Toy_story_2','John_Lasseter',1999,93);
insert into movies  values(4,'Monsters','Pete_Doctor',2001,92);
insert into movies  values(5,'Finding_Nemo','Andrew_Stanton',2003,107);
insert into movies  values(6,'The_Incredibles','Brad_bird',2004,116);
insert into movies  values(7,'Cars','John_Lasseter',2006,117);
insert into movies  values(8,'Ratatouille','Brad_bird',2007,115);
insert into movies  values(9,'WALL-E','Andrew_Stanton',2008,104);
insert into movies  values(10,'Up','Pete_Docter',2009,101);
insert into movies  values(11,'Toy_Story_3','Lee_Unkrich',2010,103);
insert into movies  values(12,'Cars_2' ,'John_Lasseter',2011,120);
insert into movies  values(13,'Brave','Brenda_Chapman',2012,102);
insert into movies  values(14,'Monsters_University','Dan_Scanlon',2013,110 );
insert into movies  values(87,'WALL-G','Brenda_Chapman',2042,97);
alter table movies add primary key (id);

--Find the title of each film
select title from movies;

--Find the director of each film
select director from movies;

--Find the title and director of each film
select title,director from movies;

--Find the title and year of each film
select title,year from movies;

--Find all the information about each film
select * from movies;
