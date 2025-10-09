CREATE PROCEDURE SelectAllEmployees
AS
BEGIN
    SELECT * FROM employees
END
GO

-- Returns all records from the employees table
-- ex. exec SelectAllEmployees