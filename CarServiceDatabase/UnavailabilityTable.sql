CREATE TABLE unavailability (
    employee_id VARCHAR(5),                -- reference the employee id 
    start_date DATE,                       -- starting date of an employee's unavailability
    end_date DATE,                         -- ending date of an employee's unavailability
    reason VARCHAR(255),                   -- reason for unavailability
    CONSTRAINT fk_unavailability_employee_id       -- name of the foreign key constraint
        FOREIGN KEY (employee_id) REFERENCES employees(employee_id) 
        ON DELETE CASCADE,                  -- foreign key to link employee_id with the employees table, cascade on delete
    CONSTRAINT chk_dates CHECK (start_date < end_date)  -- check constraint to ensure start_date is earlier than end_date
);