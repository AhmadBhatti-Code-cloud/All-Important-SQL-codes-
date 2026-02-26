CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    City VARCHAR(50)
);
INSERT INTO Customers (CustomerID, Name, Email, City) VALUES
(1, 'Ali Khan',  'ali@mail.com',  'Lahore'),
(2, 'Sara Ahmed','sara@mail.com', 'Karachi'),
(3, 'Ali Khan',  'ali@mail.com',  'Lahore'),----- duplicate
(4, 'Usman Tariq','usman@mail.com','Islamabad'),
(5, 'Sara Ahmed','sara@mail.com', 'Karachi'),--- duplicate
(6, 'Ali Khan',  'ali@mail.com',  'Lahore'),---- duplicate
(7, 'Hina Noor', 'hina@mail.com', 'Multan');

select * from Customers 

-------------------------------------------------------------------------------------------
------ Show those Records Repeat More than Once ---------- 

WITH CTE AS (         ----- CTE IS JUST A NAME USING FOR THE QUERY OF ROW_NUMBER
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY Name, Email  ORDER BY CustomerID) AS rn
    FROM  Customers
)
 SELECT * FROM CTE
WHERE rn > 1;



------- Delete the Records Appears More than Once ---------
with cte as (
select * ,
ROW_NUMBER () over (partition by Name ,Email order by CustomerID) as rns
from Customers

)
 Delete from cte
where rns > 1 