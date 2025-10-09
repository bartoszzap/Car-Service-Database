CREATE TABLE customers (
    customer_id VARCHAR(7) PRIMARY KEY,		-- customer ids' are unique, and have a limit of 7 characters & is a varchar as it includes both letters and numbers
    cust_name VARCHAR(60) NOT NULL,			-- character limit of customer names is 60 & NOT NULL constraint enforces a value to be input
    cust_email VARCHAR(320),				-- character limit for customer emails is 320 to follow RFC2821 (Simple Mail Transfer Protocol) email restrictions (some customers left email as null, therefore there is no 'NOT NULL' constraint)
    cust_phoneno VARCHAR(16)				-- character limit for phone numbers is 16 to accomodate for international prefix (again, no NOT NULL constraint as some customers left the data null)
);

/*
RFC2821: https://www.ietf.org/rfc/rfc2821.txt
*/