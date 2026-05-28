USE payroll_service;
CREATE TABLE employee_payroll (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    salary DOUBLE NOT NULL,
    start DATE NOT NULL,
    PRIMARY KEY (id)
);
SHOW TABLES;
DESC employee_payroll;