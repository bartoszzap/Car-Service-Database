CREATE PROCEDURE DeleteService
	@ID varchar(9)
AS
BEGIN
    DELETE FROM services WHERE service_id = @ID
END
GO

-- Deletes a service_id along with related records
-- ex. exec DeleteService @ID = 'S2006-103'
