use northwind;

select count(ProductID)
from products;

select avg(Price)
from Products;

select sum(quantity)
from orderdetails;

select min(price) as smallectprice
from products; 

select max(price) as largestprice
from products;

select count(customerID)
from northwind.customers
Group by country;

select count(customerID),country
from northwind.customers
Group by country
order by count(customerID) desc;

select count(CustomerID),Country
from northwind.customers
group by country
having	count(CustomerID)>7;

select count(CustomerID),country
from northwind.customers
group by country
having	count(CustomerID)>7
order by count(CustomerID) desc;






