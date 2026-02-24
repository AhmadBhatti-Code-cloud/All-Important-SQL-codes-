select * from Customer

Alter procedure duplication_find 
@customerid int ,
@firstname varchar (50),
@lastname varchar (50),
@city varchar (50)
as 
begin 
if Exists (select * from Customer 
where
@customerid =CustomerID or
@firstname = FirstName or
@lastname = LastName or
@city = City )

print 'Ooh Bhai! Record already exist'
end 
exec duplication_find 105 , 'Vegeta','King','Universe 7'