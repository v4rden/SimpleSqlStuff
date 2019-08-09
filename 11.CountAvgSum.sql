USE AdventureWorksLT2017
SELECT COUNT(LastName)
FROM SalesLT.Customer
WHERE LastName = 'Gates';

SELECT AVG(StandardCost)
FROM SalesLT.Product
WHERE Color = 'Black';

SELECT SUM(ListPrice)
FROM SalesLT.Product
WHERE Weight IS NOT NULL;