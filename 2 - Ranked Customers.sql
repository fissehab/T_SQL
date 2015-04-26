--Retrieve Companies Ranked by Revenue
SELECT	CompanyName,
		TotalDue AS Revenue,
		RANK() OVER (ORDER BY TotalDue DESC) AS RankByRevenue
FROM SalesLT.SalesOrderHeader AS SOH
JOIN SalesLT.Customer AS C
ON SOH.CustomerID=C.CustomerID;