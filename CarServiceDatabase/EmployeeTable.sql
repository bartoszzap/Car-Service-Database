CREATE TABLE employees (
    employee_id VARCHAR(5) PRIMARY KEY,		-- unique data to each employee, includes letters and numbers / all data is 5 characters long, and won't be exceeded in the foreseeable future (260,000 employee id possibilities)
    emp_name VARCHAR(100),					-- 100 characters to accomodate for a varity of lengthy names & no 'NOT NULL' constraint as some data was left null (although would've been preferable)
    emp_phone VARCHAR(16),					-- character limit for phone numbers is 16 to accomodate for international prefix
    grade VARCHAR(30)						-- 30 characters to accomodate for grades (current longest in data set is 15; 'Senior Mechanic')
);