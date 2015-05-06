--Search by city using a variable
DECLARE @City VARCHAR(20)='Toronto'
Set @City='Bellevue'



Select FirstName +' '+LastName as [Name],AddressLine1 as Address,City
FROM SalesLT.Customer as C
JOIN SalesLT.CustomerAddress as CA
ON C.CustomerID=CA.CustomerID
JOIN SalesLT.Address as A
ON CA.AddressID=A.AddressID
WHERE City=@City

--Use a variable as an output
DECLARE @Result money
SELECT @Result=MAX(TotalDue)
FROM SalesLT.SalesOrderHeader

PRINT @Result