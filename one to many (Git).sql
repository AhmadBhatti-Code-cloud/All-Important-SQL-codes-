--- E -Commerce Database ---

create table Customer 
( CustomerID int primary key ,
FirstName varchar(50),
LastName varchar (50),
City varchar(50),
)
insert into Customer (CustomerID,FirstName ,LastName,City)
values 
(101,'Ali','Rao','Multan'),
(102,'Ahmad','Malik','Karach'),
(103,'Saim','Hamid','Bahawalpur'),
(104,'Ayan','Ali','Kashmir')
select * from Customer

create table Orders 
(
OrderID int primary key ,
OrderDate date,
CustomerID int , --(Foreign key) (One to Many Relation between Customer and Orders )
Foreign key (CustomerID) references Customer(CustomerID)

)
insert into Orders (OrderID, OrderDate,CustomerID)
values 
(0011,'2025-12-21',101),
(0012,'2025-2-01',102),
(0013,'2025-3-21',104),
(0014,'2025-5-1',102)