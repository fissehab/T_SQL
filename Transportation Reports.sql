--Retrieve City List
SELECT DISTINCT City, StateProvince
FROM SalesLT.Address

--Retrieve Heaviest Products
SELECT TOP 10 PERCENT Name FROM SalesLT.Product ORDER BY Weight DESC;

--Retrieve the Heaviest 100 Products Not Including the Heaviest Ten
SELECT Name FROM SalesLT.Product ORDER BY Weight DESC
OFFSET 10 ROWS FETCH NEXT 100 ROWS ONLY;