USE payroll_service;

SELECT
e.employee_id,
e.name,
e.gender,
d.department_name,
p.basic_pay,
p.deductions,
p.taxable_pay,
p.income_tax,
p.net_pay,
e.start
FROM employee e
JOIN payroll p
ON e.employee_id = p.employee_id
JOIN employee_department ed
ON e.employee_id = ed.employee_id
JOIN department d
ON ed.department_id = d.department_id;

SELECT
e.name,
p.basic_pay
FROM employee e
JOIN payroll p
ON e.employee_id = p.employee_id
WHERE e.name = 'Bill';

SELECT *
FROM employee
WHERE start BETWEEN CAST('2018-01-01' AS DATE)
AND DATE(NOW());

SELECT
e.gender,
SUM(p.basic_pay) AS TotalSalary
FROM employee e
JOIN payroll p
ON e.employee_id = p.employee_id
GROUP BY e.gender;

SELECT
e.gender,
AVG(p.basic_pay) AS AverageSalary
FROM employee e
JOIN payroll p
ON e.employee_id = p.employee_id
GROUP BY e.gender;

SELECT
e.gender,
MIN(p.basic_pay) AS MinimumSalary
FROM employee e
JOIN payroll p
ON e.employee_id = p.employee_id
GROUP BY e.gender;

SELECT
e.gender,
MAX(p.basic_pay) AS MaximumSalary
FROM employee e
JOIN payroll p
ON e.employee_id = p.employee_id
GROUP BY e.gender;

SELECT
e.gender,
COUNT(*) AS EmployeeCount
FROM employee e
GROUP BY e.gender;
