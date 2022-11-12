--- Fundamentals of SQL

Drop table Employee

DELETE FROM Salesman WHERE salesman_id=5006;


-------------------------------------------------------SQL JOINS-----------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------

create table Customers(
CustomerID int,
CustomerName varchar(100),
ContactName varchar(100),
Address varchar(100),
City varchar(100),
PostalCode int
)

create table Orders(
OrderID int,
CustomerID int,
EmployeeID int,
OrderDate varchar(100),
ShipperID int
)

drop table Orders

insert into Customers(CustomerID,CustomerName,ContactName,Address,City,PostalCode) values(1,'Thisara','thisara','kadurupokuna','Tangalle',8822);
insert into Customers(CustomerID,CustomerName,ContactName,Address,City,PostalCode) values(1,'Alfreds Futterkiste','Alfreds','Obere Str. 57','Berlin',12209);
insert into Customers(CustomerID,CustomerName,ContactName,Address,City,PostalCode) values(2,'Ana Trujillo Emparedados y helados','Ana','Avda. de la Constitución 2222','México D.F.',05021);
insert into Customers(CustomerID,CustomerName,ContactName,Address,City,PostalCode) values(3,'Antonio Moreno Taquería','Antonio','Mataderos 2312','México D.F.',05023) 
insert into Customers(CustomerID,CustomerName,ContactName,Address,City,PostalCode) values(4,'Thisara','Thisa','tangalle','colombo',2200);
insert into Customers(CustomerID,CustomerName,ContactName,Address,City,PostalCode) values(5,'harshana','har','matara','galle',5100);
insert into Customers(CustomerID,CustomerName,ContactName,Address,City,PostalCode) values(6,'abeywickrama','abey','jafna','colombo',9900); 
insert into Customers(CustomerID,CustomerName,ContactName,Address,City,PostalCode) values(7,'kavishka','kavi','nalagama','tangalle',8822); 


insert into Orders(OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) values(101,2,1000,'2022/10/12',122);
insert into Orders(OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) values(102,4,1001,'2022/11/12',050);
insert into Orders(OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) values(103,6,1002,'2022/1/12',050);
insert into Orders(OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) values(104,8,1003,'2022/2/12',220);
insert into Orders(OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) values(105,10,1004,'2022/3/12',510);
insert into Orders(OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) values(106,12,1005,'2022/4/12',990); 
insert into Orders(OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) values(107,14,1006,'2022/5/12',882); 


select *
from Customers

select * 
from Orders

------LEFT JOIN
---------The LEFT JOIN keyword returns all records from the left table (Customers), even if there are no matches in the right table (Orders).
SELECT Customers.CustomerName, Customers.ContactName,Orders.OrderID, Orders.EmployeeID
FROM Customers LEFT JOIN Orders ON Customers.CustomerID=Orders.CustomerID    -- return all the data from Customers table & relevant data from Orders table
ORDER BY Customers.CustomerName;

------RIGHT JOIN
SELECT Customers.CustomerName, Customers.ContactName,Orders.OrderID, Orders.EmployeeID
FROM Customers RIGHT JOIN Orders  ON Customers.CustomerID=Orders.CustomerID    -- return all the data from Orders table & relevant data from Customers table
ORDER BY Customers.CustomerName;

------Inner Join -->>> A AND B
---------The INNER JOIN keyword selects all rows from both tables as long as there is a match between the columns. 
---------If there are records in the "Orders" table that do not have matches in "Customers", these orders will not be shown!

SELECT Orders.OrderID, Customers.CustomerName
FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;


SELECT Orders.OrderID, Customers.CustomerName
FROM Customers INNER JOIN Orders ON Orders.CustomerID = Customers.CustomerID;


------Outer Join -->>> A OR B
---------The FULL OUTER JOIN keyword returns all matching records from both tables whether the other table matches or not. 
---------So, if there are rows in "Customers" that do not have matches in "Orders", 
---------or if there are rows in "Orders" that do not have matches in "Customers", those rows will be listed as well.


SELECT Customers.CustomerName, Orders.OrderID
FROM Customers FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;









