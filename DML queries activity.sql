select * from northwind.orders;

select * from northwind.customers
where country ='Germany' and city ='berlin';

select * from northwind.customers
where city= 'berlin' or  city='stuttgart';

select * from northwind.customers
where not country ='Germany';

select * from northwind.customers
where country = 'Germany' AND (city ='Berlin' or city ='stuttgart');

select * from northwind.customers
where NOT country ='Germany'  AND NOT country ='uk';

select * from northwind.customers
order by country;

select * from northwind.customers
order by Country , CustomerName;

insert into northwind.customers (customername, contactname ,address, city, postalcode, country)
values('Dhavalandco','Dhaval',' barking road', 'london','e78 9du','uk');

select * from northwind.customers;

select Customername, Contactname, Address
from northwind.customers
where Address IS NOT NULL;

select Customername, Contactname, Address
from northwind.customers
where Address IS NULL;

UPDATE northwind.customers
set Contactname='Dhaval Rana', city='london'
where CustomerID='1';

SET SQL_SAFE_UPDATE= 0;

update northwind.customers 
SET postalcode = 00000
where country = 'Maxico'; 

select * from northwind.customers;

delete from northwind.customers where CustomerName ='Dhaval Rana'; 

select * from northwind.customers
where CustomerName LIKE 'd%';

select * from northwind.customers
where city LIKE 'ber%';

select * from northwind.customers
where Country in ('Germany','uk','usa');

select * from northwind.customers
where Country not in ('Germany','uk','usa');

select * from northwind.products
where price not between  10 and 20;
select * from northwind.products
where price between  10 and 20
and CategoryID not in (1,2,3);

select orders.orderID, northwind.customers.CustomerName, northwind.orders.orderdate
from orders
INNER JOIN northwind.customers on northwind.Orders.CustomersID=Customers.CustomerID;

select customers.customerName, orders.orderID
from northwind.customers
left join northwind.orders ON northwind.customers.customerID = orders.customersID
order by northwind.customers.CustomerName;

select customers.customerName , orders.orderID
from northwind.customers
CROSS JOIN northwind.orders;

select A.customerName AS customerName1 , B.customerName AS customerName2, A.city
from northwind.Customers A, northwind.customers B
WHERE A.customerID <> B.customerID
AND A.city = B.city
ORDER BY A.city;

select city from northwind.customers
union
SELECT CITY FROM northwind.suppliers
order by city;

select city from northwind.customers
union all
SELECT CITY FROM northwind.suppliers
order by city;

select  city,country from northwind.customers
where Country='usa'
union
select city,country from northwind.suppliers
where country='usa'
ORDER BY city; 

select city, country from northwind.customers
where Country='Germany'
UNION ALL
select city, country from northwind.suppliers
where country='Germany'
ORDER BY city;
 

