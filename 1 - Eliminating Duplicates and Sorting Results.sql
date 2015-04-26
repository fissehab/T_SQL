--Display a list of product colors
SELECT Color FROM SalesLT.Product;

--Display a list of product colors with the word 'None' if the value is null
SELECT DISTINCT ISNULL(Color, 'None') AS Color FROM SalesLT.Product;

--Display a list of product colors with the word 'None' if the value is null sorted by color
SELECT DISTINCT ISNULL(Color, 'None') AS Color FROM SalesLT.Product ORDER BY Color;

--Display a list of product colors with the word 'None' if the value is null and a dash if the size is null sorted by color
SELECT DISTINCT ISNULL(Color, 'None') AS Color, ISNULL(Size, '-') AS Size FROM SalesLT.Product ORDER BY Color;


--Display the top 100 products by list price
SELECT TOP 100 Name, ListPrice FROM SalesLT.Product ORDER BY ListPrice DESC;

--Display the first ten products by product number
SELECT Name, ListPrice FROM SalesLT.Product ORDER BY ProductNumber OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY; 

--Display the next ten products by product number
SELECT Name, ListPrice FROM SalesLT.Product ORDER BY ProductNumber OFFSET 10 ROWS FETCH FIRST 10 ROW ONLY;