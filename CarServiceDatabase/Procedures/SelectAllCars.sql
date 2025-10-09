CREATE PROCEDURE SelectAllCars
AS
BEGIN
    SELECT * FROM cars
END
GO

-- Returns all records from the cars table
-- ex. exec SelectAllCars