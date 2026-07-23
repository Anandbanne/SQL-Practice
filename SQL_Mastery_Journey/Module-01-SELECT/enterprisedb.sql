--create database and use it
create database EnterpriseDB;
use Enterprisedb;

/*create customer table*/

create table Customers (
	customer_id int auto_increment primary key,
	customer_name varchar(50) not null,
	email varchar(50) unique,
	city varchar(40) not null,
	country varchar(40) not null,
	phone varchar(15),
	registration_date date not null
);
describe customers;