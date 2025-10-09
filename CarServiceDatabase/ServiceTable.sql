CREATE TABLE services (
    service_id VARCHAR(9),                            -- Primary key to uniquely identify each service
    dropoff_date DATE DEFAULT CAST(GETDATE() AS DATE), -- Automatically set the current date, ensuring it's not NULL
    dropoff_time TIME(0) DEFAULT CAST(GETDATE() AS TIME(0)), -- Use CONVERT with style 0 to remove milliseconds
    work_required TEXT NOT NULL,                      -- Work description must be provided
    next_service DATE,                                -- Optional future service date
    mileage INT CHECK (mileage > 0),                  -- Mileage must be greater than 0
    registration VARCHAR(10),                         -- Vehicle registration, foreign key reference to cars table
    CONSTRAINT pk_service_id PRIMARY KEY (service_id), -- Named primary key constraint for service_id
    CONSTRAINT fk_registration FOREIGN KEY (registration) REFERENCES cars(registration) ON DELETE CASCADE, -- Named foreign key constraint for registration
    CONSTRAINT chk_mileage CHECK (mileage > 0)        -- Named check constraint to ensure mileage is greater than 0
);
