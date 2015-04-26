--Retrieve the nname and approximate weight of each product
SELECT	ProductID,
		UPPER(Name) AS ProductName,
		ROUND(Weight, 0) AS ApproxWeight
FROM SalesLT.Product;

--Retrieve the month and year products were first sold
SELECT	ProductID,
		UPPER(Name) AS ProductName,
		ROUND(Weight, 0) AS ApproxWeight,
		YEAR(SellStartDate) as SellStartYear,
		DATENAME(m, SellStartDate) as SellStartMonth
FROM SalesLT.Product;

-- Extract type from product number
SELECT	ProductID,
		UPPER(Name) AS ProductName,
		ROUND(Weight, 0) AS ApproxWeight,
		YEAR(SellStartDate) as SellStartYear,
		DATENAME(m, SellStartDate) as SellStartMonth,
		LEFT(ProductNumber, 2) AS ProductType
FROM SalesLT.Product;

-- Filter to include only products with numeric sizes
SELECT	ProductID,
		UPPER(Name) AS ProductName,
		ROUND(Weight, 0) AS ApproxWeight,
		YEAR(SellStartDate) as SellStartYear,
		DATENAME(m, SellStartDate) as SellStartMonth,
		LEFT(ProductNumber, 2) AS ProductType
FROM SalesLT.Product
WHERE ISNUMERIC(Size)=1;
