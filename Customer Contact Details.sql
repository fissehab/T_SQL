-- Get middle names if known
SELECT FirstName + ' ' + ISNULL(MiddleName + ' ', '')+ LastName AS CustomerName
FROM SalesLT.Customer;

-- Get primary contact details
UPDATE SalesLT.Customer
SET EmailAddress = NULL
WHERE CustomerID % 7 = 1;

SELECT CustomerID, COALESCE(EmailAddress, Phone) AS PrimaryContact
FROM SalesLT.Customer;

-- Get shipping status
UPDATE SalesLT.SalesOrderHeader
SET ShipDate = NULL
WHERE SalesOrderID > 71899;

SELECT SalesOrderID, OrderDate,
    CASE
      WHEN ShipDate IS NULL THEN 'Awaiting Shipment'
      ELSE 'Shipped'
    END AS ShippingStatus
FROM SalesLT.SalesOrderHeader;

