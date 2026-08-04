create table products( 

product_id int auto_increment primary key, 
product_name varchar(50) not null, 
brand varchar(50) not null, 
category varchar(50) not null, 
price decimal(10,2) check(price>=0), 
stock_quantity int default 0, 
rating decimal(2,1) check(rating between 0 and 5)

);
