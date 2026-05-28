USE payroll_service;
ALTER TABLE employee_payroll
ADD gender CHAR(1)
AFTER name;

DESC employee_payroll;
SET SQL_SAFE_UPDATES = 0;
UPDATE employee_payroll
SET gender = 'M'
WHERE name = 'Bill' OR name = 'Charlie';
UPDATE employee_payroll
SET gender = 'F'
WHERE name = 'Mark';
SELECT * FROM employee_payroll;