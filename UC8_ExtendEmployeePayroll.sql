USE payroll_service;

ALTER TABLE employee_payroll
ADD phone_number VARCHAR(15),
ADD address VARCHAR(255) DEFAULT 'TBD',
ADD department VARCHAR(100) NOT NULL DEFAULT 'General';

DESC employee_payroll;

UPDATE employee_payroll
SET
phone_number = '9876543210',
address = 'Chennai',
department = 'HR'
WHERE id = 1;

UPDATE employee_payroll
SET
phone_number = '9123456780',
address = 'Bangalore',
department = 'Sales'
WHERE id = 2;

UPDATE employee_payroll
SET
phone_number = '9988776655',
address = 'Mumbai',
department = 'Developer'
WHERE id = 3;

SELECT * FROM employee_payroll;