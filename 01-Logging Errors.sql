
DECLARE @SalesOrderID int = 0

-- uncomment the following line to delete an existing record
-- SELECT @SalesOrderID = MIN(SalesOrderID) FROM SalesLT.SalesOrderHeader; 

BEGIN TRY
	IF NOT EXISTS (SELECT * FROM SalesLT.SalesOrderHeader
				   WHERE SalesOrderID = @SalesOrderID)
	BEGIN
		-- Throw a custom error if the specified order doesn't exist
		DECLARE @error varchar(25);
		SET @error = 'Order #' + cast(@SalesOrderID as varchar) + ' does not exist';
		THROW 50001, @error, 0
	END
	ELSE
	BEGIN
		DELETE FROM SalesLT.SalesOrderDetail
		WHERE SalesOrderID = @SalesOrderID;

		DELETE FROM SalesLT.SalesOrderHeader
		WHERE SalesOrderID = @SalesOrderID;
	END
END TRY
BEGIN CATCH
	-- Catch and print the error
	PRINT  ERROR_MESSAGE();
END CATCH

