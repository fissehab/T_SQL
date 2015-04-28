--Display a list of products whose list price is higher than the highest unit price of items that have sold

SELECT MAX(UnitPrice) FROM SalesLT.SalesOrderDetail

SELECT * from SalesLT.Product
WHERE ListPrice >


SELECT * from SalesLT.Product
WHERE ListPrice >
(SELECT MAX(UnitPrice) FROM SalesLT.SalesOrderDetail)
