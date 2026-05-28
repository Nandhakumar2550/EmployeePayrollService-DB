USE payroll_service;

CREATE TABLE employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    gender CHAR(1),
    phone_number VARCHAR(15),
    address VARCHAR(255) DEFAULT 'TBD',
    start DATE NOT NULL
);

CREATE TABLE department (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE payroll (
    payroll_id INT PRIMARY KEY AUTO_INCREMENT,
    basic_pay DOUBLE NOT NULL,
    deductions DOUBLE NOT NULL,
    taxable_pay DOUBLE NOT NULL,
    income_tax DOUBLE NOT NULL,
    net_pay DOUBLE NOT NULL,
    employee_id INT,
    FOREIGN KEY (employee_id)
    REFERENCES employee(employee_id)
);

CREATE TABLE employee_department (
    employee_id INT,
    department_id INT,
    PRIMARY KEY (employee_id, department_id),
    FOREIGN KEY (employee_id)
    REFERENCES employee(employee_id),
    FOREIGN KEY (department_id)
    REFERENCES department(department_id)
);

SHOW TABLES;

INSERT INTO department(department_name)
VALUES
('HR'),
('Sales'),
('Marketing'),
('Developer');

INSERT INTO employee
(name, gender, phone_number, address, start)
VALUES
('Bill', 'M', '9876543210', 'Chennai', '2018-01-03'),
('Mark', 'F', '9123456780', 'Bangalore', '2019-11-13'),
('Charlie', 'M', '9988776655', 'Mumbai', '2020-05-21'),
('Terissa', 'F', '9876541230', 'Chennai', '2021-03-15');

INSERT INTO payroll
(basic_pay, deductions, taxable_pay, income_tax, net_pay, employee_id)
VALUES
(1000000, 100000, 900000, 90000, 810000, 1),
(2000000, 200000, 1800000, 180000, 1620000, 2),
(3000000, 300000, 2700000, 270000, 2430000, 3),
(3000000, 300000, 2700000, 270000, 2430000, 4);

INSERT INTO employee_department
(employee_id, department_id)
VALUES
(1,1),
(2,2),
(3,4),
(4,2),
(4,3);

SELECT * FROM employee_department;
