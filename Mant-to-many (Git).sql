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

----------------------------------------------------------------------------
Create table Products
(
ProductID int primary key ,
ProductName varchar (50),
Price decimal,
Quantity int 
)
insert into Products (ProductID ,ProductName ,Price ,Quantity)
values 
(010,'Torch',999.5,100),
(020,'Mug',1000.5,19),
(030,'Laptop',20000.5,50),
(040,'Mobile',250000.5,20),
(050,'TV',7500.5,90)

 -- (Many toMany Relation)
 -- (Customer and Products) (Junction Table )
 create table Shoping
(
ShopingID int primary key ,
CustomerID int,
Foreign key (CustomerID) References Customer(CustomerID),
ProductID int ,
Foreign key (ProductID) References Products(ProductID),
ProductName varchar(50)
)
Insert into Shoping (ShopingID,CustomerID,ProductID,ProductName)
Values 
(1,101,10,'Torch'),
(2,101,20,'Mug'),
(3,103,10,'Torch'),
(4,104,30,'Laptop')