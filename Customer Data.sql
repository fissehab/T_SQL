
-- Display all columns for all customers
SELECT * FROM SalesLT.Customer;

-- Display customer name fields
SELECT Title, FirstName, MiddleName, LastName, Suffix
FROM SalesLT.Customer;

-- Display title and last name with phone number
SELECT Salesperson, Title + ' ' + LastName AS CustomerName, Phone
FROM SalesLT.Customer;