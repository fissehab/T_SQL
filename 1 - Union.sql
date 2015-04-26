-- Setup
CREATE VIEW [SalesLT].[Customers]
as
select distinct firstname,lastname
from saleslt.customer
where lastname >='m'
or customerid=3;
GO
CREATE VIEW [SalesLT].[Employees]
as
select distinct firstname,lastname
from saleslt.customer
where lastname <='m'
or customerid=3;
GO

-- Union example
SELECT FirstName, LastName
FROM SalesLT.Employees
UNION
SELECT FirstName, LastName
FROM SalesLT.Customers
ORDER BY LastName;


