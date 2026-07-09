/*Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)*/
insert into movies values(15,'toy story_4','pete doctor',2016,120);

/*Toy Story 4 has been released to critical acclaim! 
It had a rating of 8.7, and made 340 million domestically and 270 million internationally.
 Add the record to the BoxOffice table.*/
 insert into boxoffice values(15,8.7,340000000,270000000);

/*The director for A Bug's Life is incorrect, it was actually directed by John Lasseter*/
update movies set director='john lasseter' where id=2;

/*The year that Toy Story 2 was released is incorrect, it was actually released in 1999*/
update movies set year=1999 where  id=3;

select * from movies;
/*Both the title and director for Toy Story 3 is incorrect! 
The title should be "Toy Story 2.1" and it was directed by Lee doctor*/
update movies set title='toy story 2.1',director='lee doctor' where id =11;

/*This database is getting too big, lets remove all movies 
that were released before 2005.*/
delete from movies where year<2005;

/*Andrew Stanton has also left the studio, 
so please remove all movies directed by him.*/
delete from Movies where Director="Andrew Stanton";