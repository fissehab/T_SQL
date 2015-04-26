SELECT Name, ISNULL(TRY_CAST(Size AS Integer),0) AS NumericSize
FROM SalesLT.Product;

SELECT ProductNumber, ISNULL(Color, '') + ', ' + ISNULL(Size, '') AS ProductDetails
FROM SalesLT.Product;

SELECT Name, NULLIF(Color, 'Multi') AS SingleColor
FROM SalesLT.Product;

SELECT Name, COALESCE(DiscontinuedDate, SellEndDate, SellStartDate) AS FirstNonNullDate
FROM SalesLT.Product;

--Searched case
SELECT Name,
		CASE
			WHEN SellEndDate IS NULL THEN 'On Sale'
			ELSE 'Discontinued'
		END AS SalesStatus
FROM SalesLT.Product;

--Simple case
SELECT Name,
		CASE Size
			WHEN 'S' THEN 'Small'
			WHEN 'M' THEN 'Medium'
			WHEN 'L' THEN 'Large'
			WHEN 'XL' THEN 'Extra-Large'
			ELSE ISNULL(Size, 'n/a')
		END AS ProductSize
FROM SalesLT.Product;