------Triggers --------
-- using Triggers wth Instead of 


-- Triggers For Restricted the Data  Deletion 
create trigger trg_stop_delete  -- Trigger Name 
on Customers --Table Name 
instead of delete   ---" Instead of " Restricted any  command (Insert,Update,Delete) to table 
as 
begin
print'Deletion is not allowed'
end
-- Triggers fires when anyone Deletes Data


-----------------------------------------------------------------------------


-- Triggers For Restricted the Data Updation 
Create Trigger trg_stop_Updates
on Customers
instead of Update 
as 
begin 
Print 'Updating Data is Not Allowed '
end 

 -- Triggers Fires when a Users Update Data 
  update Customers set Name = 'Ali' where CustomerID = 1

---------------------------------------------------------------------

-- Triggers For Restricted the Data  Insertion 
Create Trigger trg_stop_Updates
on Customers
instead of Insert
as 
begin 
Print ' Inserting Data is Not Allowed '
end 

 -- Triggers Fires when a Users  Insert Data 
 Insert into Customers 
 values (...)