USE AdventureWorksLT2017
UPDATE SalesLT.Address
SET City = 'UpdatedCity'
WHERE City = 'TestCity';

SELECT *
from SalesLT.Address
WHERE City = 'UpdatedCity'