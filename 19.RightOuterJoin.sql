USE AdventureWorksLT2017

SELECT p.Name,
       p.StandardCost,
       p.ListPrice,
       sod.UnitPrice,
       sod.UnitPriceDiscount
FROM SalesLT.SalesOrderDetail sod
         RIGHT OUTER JOIN SalesLT.Product p
                          ON sod.ProductID = p.ProductID
WHERE sod.UnitPrice > 1000;