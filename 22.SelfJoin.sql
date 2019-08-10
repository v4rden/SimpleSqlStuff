USE AdventureWorksLT2017
DECLARE
    @temp AS TABLE
             (
                 FirstName   varchar(max),

                 CompanyName varchar(max)
             )

INSERT INTO @temp(firstname, companyname)
SELECT TOP 4 FirstName, CompanyName
FROM SalesLT.Customer

SELECT a.FirstName AS fn1, b.FirstName AS fn2, a.CompanyName
FROM @temp a,
     @temp b
WHERE a.FirstName <> b.FirstName
ORDER BY CompanyName;