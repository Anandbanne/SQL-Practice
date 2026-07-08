
/*List all movies and their combined sales in millions of dollars*/
 select title, (domestic_sales+international_sales)/1000000 as gross_sales 
 from movies join boxoffice on movies.id=boxoffice.movie_id;
 

 /*List all movies and their ratings in percent*/
 select title, round(rating*10) as percent from movies join boxoffice on movies.id=boxoffice.movie_id;
 

 /*List all movies that were released on even number year*/
 select title,year from movies where year%2=0;


 /*Find the number of Artists in the studio (without a HAVING clause)*/
 select count(*) from employees where role='artist';


/*Find the number of Employees of each role in the studio */
select count(*) from employees group by role;   


/*Find the total number of years employed by all Engineers*/
select role,sum(years) as total_no_of_yrs from employees where role='engineer';
select * from movies;

/*Find the number of movies each director has directed*/
select director,count(title) from movies group by director;


/*Find the total domestic and international sales that can be attributed to each director*/
select director,sum(domestic_sales+international_sales) from 
movies join boxoffice on movies.id=boxoffice.movie_id group by director;


/*Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)*/
insert into movies values(15,'toy story_4','pete doctor',2016,120);