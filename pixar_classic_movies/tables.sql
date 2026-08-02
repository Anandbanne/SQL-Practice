/*Create a new table named Database with the following columns:
– Name A string (text) describing the name of the database
– Version A number (floating point) of the latest version of this database
– Download_count An integer count of the number of times this database was downloaded*/
create table Databas (name varchar(20),version float, download_count int);

/*Add a column named Aspect_ratio with a FLOAT data type to 
store the aspect-ratio each movie was released in*/
alter table movies add aspect_ratio float default 2.39;

/*Add another column named Language with a TEXT data type to store the language that the movie was released in.
 Ensure that the default for this language is English.*/
alter table movies add language varchar(20) default "english";

select * from movies;

/*We've sadly reached the end of our lessons, lets clean up by removing the Movies table.*/
drop table if exists movies;

/*And drop the BoxOffice table as well */
drop table if exists boxoffice;