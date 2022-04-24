 /*Northwind Database Exercises*/
                   
Use northwind;

/*1. Write a query to get Product name and quantity/unit*/
select productname, quantityperunit from products;

/*2. Write a query to get current Product list (Product ID and name)*/
select productid,productname from products;

/*3. Write a query to get discontinued Product list (Product ID and name)*/
select productid, productname from products
where discontinued= 1;

/*4. Write a query to get most expense and least expensive Product list (name and unit price)*/
select productname,unitprice
from products
order by unitprice desc;

/*5. Write a query to get Product list (id, name, unit price) where current products cost less than $20*/
select productid, productname, unitprice from products
where unitprice <20;

/*6. Write a query to get Product list (id, name, unit price) where products cost between $15 and $25*/
select productid,productname,unitprice from products
where unitprice between 15 and 25;

/*7. Write a query to get Product list (name, unit price) of above average price*/
select productname, unitprice from products
where unitprice > (select avg(unitprice) from products);

/*8. Write a query to get Product list (name, unit price) of ten most expensive products*/
select productname,unitprice from products
order by unitprice desc
limit 10;

/* 9. Write a query to count current and discontinued products */
SELECT Count(ProductName)
FROM Products
GROUP BY Discontinued;

/* 10. Write a query to get Product list (name, units on order , units in stock) of stock is less than the quantity on order */
select productname,unitsonorder,unitsinstock from products
where unitsinstock < unitsonorder;