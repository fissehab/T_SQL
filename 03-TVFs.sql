CREATE FUNCTION SalesLT.udfCustomersByCity
(@City AS VARCHAR(20))
RETURNS TABLE
AS
RETURN
(SELECT C.CustomerID, FirstName, LastName, AddressLine1, City, StateProvince
 FROM SalesLT.Customer C JOIN SalesLT.CustomerAddress CA
 ON C.CustomerID=CA.CustomerID
 JOIN SalesLT.Address A ON CA.AddressID=A.AddressID
 WHERE City=@City);


SELECT * FROM SalesLT.udfCustomersByCity('Bellevue')
