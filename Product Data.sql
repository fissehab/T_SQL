--Retrieve Product Details
SELECT Name, Color, Size
FROM SalesLT.Product
WHERE ProductModelID = 1;

--Retrieve Products by Color and Size
SELECT ProductNumber, Name
FROM SalesLT.Product
WHERE Color IN ('Black','Red','White') and Size IN ('S','M');

--Retrieve Products by Product Number
SELECT ProductNumber, Name, ListPrice
FROM SalesLT.Product 
WHERE ProductNumber LIKE 'BK-%';

--Retrieve Specific Products by Product Number
SELECT ProductNumber, Name, ListPrice
FROM SalesLT.Product 
WHERE ProductNumber LIKE 'BK-[^R]%-[0-9][0-9]';
