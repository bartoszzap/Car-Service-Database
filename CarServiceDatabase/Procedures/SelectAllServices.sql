CREATE PROCEDURE SelectServiceReg
    @Reg varchar(50)
AS
BEGIN
    SELECT * FROM services WHERE registration = @Reg;
END
GO

-- Returns all records from the services table, who have the specified registration
-- ex. exec SelectServiceReg @Reg = 'AF56 WWJ'

