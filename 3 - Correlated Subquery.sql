--For each customer list all sales on the last day that they made a sale

SELECT CustomerID, SalesOrderID, OrderDate
FROM SalesLT.SalesOrder AS SO1
ORDER BY CustomerID,OrderDate

SELECT CustomerID, SalesOrderID, OrderDate
FROM SalesLT.SalesOrder AS SO1
WHERE orderdate =
(SELECT MAX(orderdate)
FROM SalesLT.SalesOrder)


SELECT CustomerID, SalesOrderID, OrderDate
FROM SalesLT.SalesOrder AS SO1
WHERE orderdate =
(SELECT MAX(orderdate)
FROM SalesLT.SalesOrder AS SO2
WHERE SO2.CustomerID = SO1.CustomerID)
ORDER BY CustomerID
