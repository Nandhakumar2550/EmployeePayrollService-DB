USE payroll_service;

ALTER TABLE employee_payroll
ADD basic_pay DOUBLE NOT NULL DEFAULT 0 AFTER salary,
ADD deductions DOUBLE NOT NULL DEFAULT 0 AFTER basic_pay,
ADD taxable_pay DOUBLE NOT NULL DEFAULT 0 AFTER deductions,
ADD income_tax DOUBLE NOT NULL DEFAULT 0 AFTER taxable_pay,
ADD net_pay DOUBLE NOT NULL DEFAULT 0 AFTER income_tax;

DESC employee_payroll;

UPDATE employee_payroll
SET
basic_pay = 1000000,
deductions = 100000,
taxable_pay = 900000,
income_tax = 90000,
net_pay = 810000
WHERE id = 1;

UPDATE employee_payroll
SET
basic_pay = 2000000,
deductions = 200000,
taxable_pay = 1800000,
income_tax = 180000,
net_pay = 1620000
WHERE id = 2;

UPDATE employee_payroll
SET
basic_pay = 3000000,
deductions = 300000,
taxable_pay = 2700000,
income_tax = 270000,
net_pay = 2430000
WHERE id = 3;

SELECT * FROM employee_payroll;

