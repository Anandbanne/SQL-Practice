/* Create a table to store box office information for Pixar classic movies and 
insert the following data into the table:*/
create table boxoffice (movie_id int primary key, rating float, domestic_sales int, international_sales int);
insert into boxoffice values(5,8.2,380843261,555900000);
insert into boxoffice values(14,7.4,268492764,475066843);
insert into boxoffice values(8,8.0,206445654,417277164);
insert into boxoffice values(12,6.4,191452396,368400000);
insert into boxoffice values(3,7.9,245852179,239163000);
insert into boxoffice values(6,8.0,261441092,370001000);
insert into boxoffice values(9,8.5,223808164,297503696);
insert into boxoffice values(11,8.4,415004880,648167031);
insert into boxoffice values(1,8.3,191796233,170162503);
insert into boxoffice values(7,7.2,244082982,217900167);
insert into boxoffice values(10,8.3,293004164,438338580);
insert into boxoffice values(4,8.1,289916256,272900000);
insert into boxoffice values(2,7.2,162798565,200600000);
insert into boxoffice values(13,7.2,237283207,301700000);

--Find the domestic and international sales for each movie
select movies.title ,boxoffice.domestic_sales,boxoffice.international_sales 
from movies inner join boxoffice on movies.id=boxoffice.movie_id order by title asc;


--Show the sales numbers for each movie that did better internationally rather than domestically
select movies.title,boxoffice.domestic_sales,boxoffice.international_sales 
from movies join boxoffice on movies.id=boxoffice.movie_id where
boxoffice.international_sales > boxoffice.domestic_sales ;


--List all the movies by their ratings in descending order
select movies.title as movies, boxoffice.rating as rating 
from movies inner join boxoffice on 
movies.id = boxoffice.movie_id order by rating desc;