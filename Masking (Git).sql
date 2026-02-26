create table  employee (
employeeid int primary key identity (1,1),
employeename varchar (50),
email varchar(50),
salary int ,
loginpassword int 
)
-- Insert 10 sample records
INSERT INTO employee (employeename, email, salary, loginpassword)
VALUES
('Ali Khan', 'ali.khan@example.com', 55000, 1234),
('Sara Ahmed', 'sara.ahmed@example.com', 60000, 2345),
('Bilal Hussain', 'bilal.hussain@example.com', 45000, 3456),
('Fatima Noor', 'fatima.noor@example.com', 70000, 4567),
('Usman Tariq', 'usman.tariq@example.com', 52000, 5678),
('Ayesha Malik', 'ayesha.malik@example.com', 48000, 6789),
('Hamza Raza', 'hamza.raza@example.com', 65000, 7890),
('Zara Ali', 'zara.ali@example.com', 47000, 8901),
('Imran Shah', 'imran.shah@example.com', 72000, 9012),
('Nida Javed', 'nida.javed@example.com', 53000, 1122);


select * from employee

--------------------------------------------------------------
--- WE CAN ADD MASKING UING FUNCTON   on Column "Lastname"
-- Partial
-- Default
-- Random 

-- Masked Data  = "1******* 00"
 ALTER TABLE Customer
ALTER COLUMN LastName VARCHAR(50) 
MASKED WITH (FUNCTION = 'partial(1,"*****",0)');


--Masked Data  = XXXXXXXXXXX
ALTER TABLE Customer
ALTER COLUMN LastName VARCHAR(50) 
MASKED WITH (FUNCTION = 'default()');



-- Masked Data = Pick A Random Number From A  range 
-- Used for pasword and Codes 
ALTER TABLE Customer
ALTER COLUMN LastName VARCHAR(50) 
MASKED WITH (FUNCTION = 'random(1000,5000)');


--- Remove Masking From The DATA 
 ALTER TABLE Customer 
ALTER COLUMN LastName DROP MASKED;
