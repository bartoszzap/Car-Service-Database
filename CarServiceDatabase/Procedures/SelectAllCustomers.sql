CREATE PROCEDURE SelectAllCustomers
AS
BEGIN
    SELECT * FROM customers
END
GO

-- Returns all records from the customer table
-- ex. exec SelectAllCustomers