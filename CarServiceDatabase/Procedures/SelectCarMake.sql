CREATE PROCEDURE SelectCarMake
    @Make varchar(50)
AS
BEGIN
    SELECT * FROM cars WHERE make = @Make;
END
GO

-- Returns cars whose 'make' is what the user specified
-- ex. exec SelectCarMake @Make = 'Nissan'