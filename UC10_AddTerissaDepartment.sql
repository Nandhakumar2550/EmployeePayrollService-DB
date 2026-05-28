INSERT INTO employee_payroll
(name, gender, salary, basic_pay, deductions, taxable_pay, income_tax, net_pay, start, phone_number, address, department)
VALUES
('Terissa', 'F', 3000000, 3000000, 300000, 2700000, 270000, 2430000, '2021-03-15', '9876541230', 'Chennai', 'Sales');

INSERT INTO employee_payroll
(name, gender, salary, basic_pay, deductions, taxable_pay, income_tax, net_pay, start, phone_number, address, department)
VALUES
('Terissa', 'F', 3000000, 3000000, 300000, 2700000, 270000, 2430000, '2021-03-15', '9876541230', 'Chennai', 'Marketing');

SELECT * FROM employee_payroll
WHERE name = 'Terissa';