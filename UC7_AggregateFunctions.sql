USE payroll_service;
SELECT gender, SUM(salary) AS TotalSalary
FROM employee_payroll
GROUP BY gender;

SELECT gender, AVG(salary) AS AverageSalary
FROM employee_payroll
GROUP BY gender;

SELECT gender, MIN(salary) AS MinimumSalary
FROM employee_payroll
GROUP BY gender;

SELECT gender, MAX(salary) AS MaximumSalary
FROM employee_payroll
GROUP BY gender;

SELECT gender, COUNT(*) AS EmployeeCount
FROM employee_payroll
GROUP BY gender;