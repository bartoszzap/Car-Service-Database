CREATE TABLE works_on (
    service_id VARCHAR(9),            -- character limit is 9 to stay consistent with the service table
    employee_id VARCHAR(5),           -- character limit is 5 to stay consistent with the employee table
    time_spent TIME(0) DEFAULT CAST(getdate() AS TIME(0)), -- ex. 3:15 / default value to capture current time
    CONSTRAINT pk_works_on PRIMARY KEY (service_id, employee_id),  -- composite primary key constraint
    CONSTRAINT fk_service_id FOREIGN KEY (service_id) REFERENCES services(service_id) ON DELETE CASCADE, -- foreign key constraint for service_id
    CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES employees(employee_id) ON DELETE NO ACTION -- foreign key constraint for employee_id
);
