USE AdventureWorksLT2017

-- one character at front L any number of characters
SELECT *
FROM SalesLT.Product
where Name like '_L%';

-- one character that is h or m (case insensitive)
SELECT *
FROM SalesLT.Product
where Name like '[hm]L%';

-- one character that is not l
SELECT *
FROM SalesLT.Product
where Name like '[^l]L%';

--one character that is in range between h and l
SELECT *
FROM SalesLT.Product
where Name like '[h-l]L%';