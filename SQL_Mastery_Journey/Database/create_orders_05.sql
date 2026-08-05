/*Create orders table*/
create table orders (
order_id int auto_increment primary key,
customer_id int not null,
foreign key  (customer_id)  references customers(customer_id),
product_id int not null,
foreign key (product_id) references products(product_id),
quantity int not null check(quantity>0),
unit_price decimal(10,2) not null check(unit_price>=0),
total_amount decimal(20,2)not null check(total_amount>=0),
order_date date not null,
status varchar(20) default "Pending"
);