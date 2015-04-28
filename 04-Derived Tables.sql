SELECT Category, COUNT(ProductID) AS Products
FROM
	(SELECT p.ProductID, p.Name AS Product, c.Name AS Category
	 FROM SalesLT.Product AS p
	 JOIN SalesLT.ProductCategory AS c
	 ON p.ProductCategoryID = c.ProductCategoryID) AS ProdCats
GROUP BY Category
ORDER BY Category;
