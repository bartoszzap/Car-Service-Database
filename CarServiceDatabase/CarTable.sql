CREATE TABLE cars (
    registration VARCHAR(10),                    -- existing registration data ranged from 7-8 characters long, and uniquely identifies a car 
    make VARCHAR(50) NOT NULL,                    -- length of a car make can vary significantly, character limit is 50 to stay safe; NOT NULL constraint is present so that we can identify vehicles easier & order specific parts
    model VARCHAR(50),                            -- similar to above, however the NOT NULL constraint is not present as some of the existing data was null
    date_of_manufacture DATE,                     -- data can only be presented as a date (e.g 2/7/2020)
    customer_id VARCHAR(7),                       -- character limit is set to 7 to stay consistent with the customer table
    CONSTRAINT pk_registration PRIMARY KEY (registration),  -- Primary key constraint for registration
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers(customer_id) -- Foreign key constraint linking to customers table
);
