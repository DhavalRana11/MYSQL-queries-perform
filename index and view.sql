use northwind;

CREATE INDEX idx_lastName ON Customers(Name);



CREATE VIEW BrazilCustomers AS
select CustomerName, ContactName
from northwind.customers
WHERE Country ='Brazil';

SELECT * FROM northwind.customers;

CREATE VIEW ProductsAboveAveragePrice AS
select productName, Price
from northwind.products
WHERE price > (select avg(price) from products);

SELECT * FROM northwind.products;

CREATE VIEW ukcustomers as
select customerName, ContactName
from northwind.customers
WHERE Country = 'ukcustomers';

select * from northwind.customers;

select * from northwind.customers;
create table northwind.customers
(
id int not null,
customerName varchar(24),
contactName varchar(24),
postalcode int
);


create table northwind.student
(
 id int not null,
 first_name varchar(26),
 last_name varchar(27),
 age int
 );
 desc northwind.student;

create index index_first_name	
on northwind.student(first_name);

select * from northwind.customers;

create view northwind.customers_view as 
select CustomerID, CustomerName,City
from northwind.customers;

select * from northwind.customers_view;

create view northwind.employees_view as
select EmployeeID,FirstName,LastName
from northwind.employees;

select * from northwind.employees_view;



	