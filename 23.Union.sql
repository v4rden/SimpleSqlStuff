USE AdventureWorksLT2017

SELECT *
FROM SalesLT.Product
WHERE (ProductID BETWEEN 600 AND 800)
  AND Color = 'Black'
  AND ProductNumber LIKE 'fr%'
UNION -- distinct, use ALL to have duplicates
SELECT *
FROM SalesLT.Product
WHERE Color = 'Red'
  AND ProductNumber LIKE 'fr%';


