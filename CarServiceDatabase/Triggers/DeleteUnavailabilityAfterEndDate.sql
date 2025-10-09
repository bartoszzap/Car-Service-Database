CREATE TRIGGER DeleteUnavailabilityAfterEndDate
ON unavailability
AFTER UPDATE -- every update execute the following code (ex. new data is inserted or deleted)
AS
BEGIN
    DELETE FROM unavailability -- delete the employee_id and related records alongside it from the unavailability if checks come back as positive
    WHERE employee_id IN (
	SELECT employee_id 
	FROM inserted -- virtual trigger table, when data is inserted it's temporarily held in this table
	WHERE end_date < GETDATE() -- only gather employee_id's who have surpassed the end_date
	) 
    AND end_date < GETDATE();  -- check that the current date has surpassed the specified end_date
END