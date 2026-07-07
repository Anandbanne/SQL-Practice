--Find the movie with a row id of 6
select id,title from movies where id=6;


--Find the movies released in the years between 2000 and 2010
select title,year from movies where year between 2000 and 2010;


--Find the movies not released in the years between 2000 and 2010
select title,year from movies where year not between 2000 and 2010;


--Find the first 5 Pixar movies and their release year
select title,year from movies where id between 1 and 5;

--Find all the Toy Story movies
select title,director from movies where title like 'toy_Story';


--Find all the movies directed by John Lasseter
select title from movies where director = 'John_lasseter';


--Find all the movies (and director) not directed by John Lasseter
select title,director from movies where director <>'John_Lasseter';


--Find all the WALL-* movies
select * from movies where title like 'wall%';
