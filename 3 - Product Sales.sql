--Retrieve Total Sales by Product
SELECT Name,SUM(LineTotal) AS TotalRevenue
FROM SalesLT.SalesOrderDetail AS SOD
JOIN SalesLT.Product AS P ON SOD.ProductID=P.ProductID
GROUP BY P.Name
ORDER BY TotalRevenue DESC;

-- Only products that cost over $1,000
SELECT Name,SUM(LineTotal) AS TotalRevenue
FROM SalesLT.SalesOrderDetail AS SOD
JOIN SalesLT.Product AS P ON SOD.ProductID=P.ProductID
WHERE P.ListPrice > 1000
GROUP BY P.Name
ORDER BY TotalRevenue DESC;

--Only groupings with sales totals over $20,000
SELECT Name,SUM(LineTotal) AS TotalRevenue
FROM SalesLT.SalesOrderDetail AS SOD
JOIN SalesLT.Product AS P ON SOD.ProductID=P.ProductID
WHERE P.ListPrice > 1000
GROUP BY P.Name
HAVING SUM(LineTotal) > 20000
ORDER BY TotalRevenue DESC;
