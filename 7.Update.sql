--It is supposed you run InsertInto.sql
USE AdventureWorksLT2017
UPDATE SalesLT.Address
SET City = 'UpdatedCity'
WHERE City = 'TestCity';

--Check
SELECT *
from SalesLT.Address
WHERE City = 'UpdatedCity'