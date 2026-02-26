----- Stored Procedures ------------

---- Insert & Update Data ------------
select * from Customers 
 Create Procedure Insert_Update_Customers 
   @CustomerID int ,
   @Name Varchar (20)= Null, -- Null Values Allow
   @email varchar(50)= null,
   @City varchar(20)
   as
   Begin 

                  --------  Condition 1 --------
    --- If User enters the existed data .It Updates The Data 

   if exists ( Select * from customers where CustomerID = @CustomerID)
   begin
   update Customers set  
     CustomerID = @CustomerID,
         Name = @Name,
         Email = @email,
         City =@City 


    where (CustomerID = @CustomerID)
    Print 'A record is Update in Database '
   end
   
   ---------- Condition 2 -----------------
   -- If User Enters the New Data .It insert as A new Record

   Else 
   Begin

   Insert into Customers 
   values (@CustomerID,@Name,@email,@City)

   Print 'New record is Insert in Database'

   end 

   End
