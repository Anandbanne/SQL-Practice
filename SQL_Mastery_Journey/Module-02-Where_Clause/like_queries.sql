
/*33. Display customers whose name starts with A.*/
select * from customers where customer_name like "a%";

/*34. Display customers whose name ends with a.*/
select * from customers where customer_name like '%a';

/*35. Display customers whose name contains "an".*/
select * from customers where customer_name like '%an%';

/*36. Display customers whose city starts with H.*/
select * from customers where city like 'h%';

/*37. Display customer names whose second letter is a.*/
select * from customers where customer_name like '_a%';

/*38. Display customers whose names have exactly 5 letters and start with A.*/
select * from customers where customer_name like 'a____';

/*39. Display the first 2 customers whose names start with A.*/
select * from customers where customer_name like 'a%' limit 2;