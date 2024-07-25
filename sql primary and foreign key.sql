use training;
create table customers( 
customers_id int not null auto_increment primary key,
name varchar(50)  not null,
email varchar(50)
);

select * from training.customers;

create table test 
(
test_id int not null auto_increment,
name varchar(50),
amount decimal(10,2),
customers_id int null,
primary key (test_id),
foreign key(customers_id)references customers(customers_id)
);

select * from training.test;

select * from training.orders;
insert into customers (customers_id,name, email)values
('1','Dhaval','Dhaval11@gmail.com'),
('2','pooja','poojarana@gmail.com'),
('3','Dhavalpooja','Dhavalpooja@hotmail.com');

insert into orders (customers_id,customername,amount)values
('1','pasta',100.10),
('2','mango',200.5),
('3','banana',30.3);



create table students
(
 id int not null auto_increment,
 name varchar(26) not null,
 email varchar(23) not null,
 order_id int null,
 primary key (id),
 foreign key(order_id) references orders(order_id)
 
 );	
 

 







