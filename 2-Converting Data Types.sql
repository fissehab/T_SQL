SELECT CAST(ProductID AS varchar(5)) + ': ' + Name AS ProductName
FROM SalesLT.Product;

SELECT CONVERT(varchar(5), ProductID) + ': ' + Name AS ProductName
FROM SalesLT.Product;

SELECT SellStartDate,
       CONVERT(nvarchar(30), SellStartDate) AS ConvertedDate,
	   CONVERT(nvarchar(30), SellStartDate, 126) AS ISO8601FormatDate
FROM SalesLT.Product;

SELECT Name, CAST (Size AS Integer) AS NumericSize
FROM SalesLT.Product; --(note error - some sizes are incompatible)

SELECT Name, TRY_CAST (Size AS Integer) AS NumericSize
FROM SalesLT.Product; --(note incompatible sizes are returned as NULL)
