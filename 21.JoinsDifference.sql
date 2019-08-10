USE AdventureWorksLT2017

-- All sod and intersection
SELECT p.Name, sod.UnitPrice
FROM SalesLT.SalesOrderDetail sod
         LEFT JOIN SalesLT.Product p ON sod.ProductID = p.ProductID

--All sod without intersection
SELECT p.Name, sod.UnitPrice
FROM SalesLT.SalesOrderDetail sod
         LEFT JOIN SalesLT.Product p ON sod.ProductID = p.ProductID
WHERE p.ProductID IS NULL

-- All sod, all p and intersection
SELECT p.Name, sod.UnitPrice
FROM SalesLT.SalesOrderDetail sod
         FULL JOIN SalesLT.Product p ON sod.ProductID = p.ProductID

-- All sod, all p without intersection
SELECT p.Name, sod.UnitPrice
FROM SalesLT.SalesOrderDetail sod
         FULL JOIN SalesLT.Product p ON sod.ProductID = p.ProductID
WHERE p.ProductID IS NULL
   OR sod.ProductID IS NULL
